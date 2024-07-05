import 'package:ayurcare/layers/data/source/local/token_storage.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

class LoginApi {
  final dio = Dio();
  final api = dotenv.env['API_URL'];
  final TokenStorage tokenStorage = TokenStorage();

  @override
  Future<void> postLoginData(email, password) async {
    try {
      final map = FormData.fromMap({
        'username': email,
        'password': password
      });

      var response = await dio.post('$api/Login', data: map);
      
      print(response.data['token']);

      String token = response.data['token'];

      if (token.isNotEmpty) {
        await tokenStorage.saveToken(token);
      }

      if (response.statusCode == 200) {
        print("true");
      } else {
        print("false");
        print('HTTP POST request failed with status: ${response.statusCode}');
      }
    } catch (e) {
      print("----------------------");
      // print((e as DioException).response?.statusCode);
      print('HTTP POST request failed: $e');
      print("----------------");
    } finally {
      print("finally called");
    }
  }
}
