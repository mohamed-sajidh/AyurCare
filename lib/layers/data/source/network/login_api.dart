import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

class LoginApi {
  final dio = Dio();
  final api = dotenv.env['API_URL'];

  @override
  Future<void> postLoginData(email, password) async {
    try {
      // final map = FormData.fromMap({
      //   'username': 'test_user',
      //   'password': '12345678'
      // });

      // var response = await dio.post('https://flutter-amr.noviindus.in/api/Login', data: map);

      final url = Uri.parse('https://flutter-amr.noviindus.in/api/Login');
      final response = await http.post(
        url,
        body: {
          'username': 'test_user',
          'password': '12345678',
        },
      );

      print("+++++++++++++++++++++++++");

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
