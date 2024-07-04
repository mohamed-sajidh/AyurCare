import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class LoginApi {
  final dio = Dio();
  final api = dotenv.env['API_URL'];

  @override
  Future<void> postLoginData(email, password) async {
    try {
      final response = await dio.post(
        "https://flutter-amr.noviindus.in/api/Login/[name = 'Login']",
        data: {'username': email, 'password': password},
      );
      print(response.data);
    } catch (e) {
      print("----------------------");
      print(e);
      print("----------------");
    } finally {
      print("22222222");
      print("finally called");
    }
  }
}
