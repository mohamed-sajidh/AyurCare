import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LoginApi {
  final dio = Dio();
  final api = dotenv.env['API_URL'];

  Future<String?> postLoginData(String email, String password) async {
    try {
      final map = FormData.fromMap({'username': email, 'password': password});

      Response response = await dio.post('$api/Login', data: map);

      if (response.statusCode == 200) {
        String token = response.data['token'];
        return token;
      } else {
        return null;
      }
    } catch (e) {
      print('HTTP POST request failed: $e');
      return null;
    }
  }
}

class TokenStorage {
  final _storage = const FlutterSecureStorage();

  Future<void> saveToken(String token) async {
    await _storage.write(key: 'auth_token', value: token);
  }

  Future<String?> getToken() async {
    return await _storage.read(key: 'auth_token');
  }

  Future<void> deleteToken() async {
    await _storage.delete(key: 'auth_token');
  }
}

class ApiClient {
  final Dio dio = Dio();
  final TokenStorage tokenStorage = TokenStorage();

  ApiClient() {
    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) async {
        String? token = await tokenStorage.getToken();
        if (token != null) {
          options.headers['Authorization'] = 'Bearer $token';
        }
        return handler.next(options);
      },
    ));
  }

  Future<Response> getProtectedData() async {
    try {
      final response = await dio.get('https://example.com/protected-endpoint');
      return response;
    } catch (e) {
      print('HTTP GET request failed: $e');
      rethrow;
    }
  }
}

class LoginWidget extends StatefulWidget {
  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  final LoginApi loginApi = LoginApi();
  final TokenStorage tokenStorage = TokenStorage();
  final ApiClient apiClient = ApiClient();
  final String email = 'test@example.com';
  final String password = 'password';

  Future<void> login() async {
    try {
      String? token = await loginApi.postLoginData(email, password);
      if (token != null) {
        await tokenStorage.saveToken(token);
        print("Token saved successfully");
      } else {
        print("Login failed");
      }
    } catch (e) {
      print("An error occurred: $e");
    }
  }

  Future<void> fetchProtectedData() async {
    try {
      Response response = await apiClient.getProtectedData();
      print("Protected data: ${response.data}");
    } catch (e) {
      print("An error occurred while fetching protected data: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: login,
              child: Text('Login'),
            ),
            ElevatedButton(
              onPressed: fetchProtectedData,
              child: Text('Fetch Protected Data'),
            ),
          ],
        ),
      ),
    );
  }
}

void main() async {
  await dotenv.load();
  runApp(MaterialApp(
    home: LoginWidget(),
  ));
}
