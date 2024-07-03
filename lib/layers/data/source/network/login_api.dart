import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class LoginApi {
  final dio = Dio();
  final api = dotenv.env['API_URL'];

  @override 
  Future<void> postLoginData(email, password) async {
    final response = await dio.post("https://flutter-amr.noviindus.in/api/Login/", data: {'username': email, 'password': password});
    print("2222222222222222222222222");
    print(response.data);
    
  }
}