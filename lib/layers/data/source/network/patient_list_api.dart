import 'package:ayurcare/layers/data/source/local/token_storage.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class PatientListApi {
  final Dio dio = Dio();
  final api = dotenv.env['API_URL'];
  final TokenStorage tokenStorage = TokenStorage();

  PatientListApi() {
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

  Future<void> getPatientList() async {
    try {
      print("--------------------------------------------------");
      final response = await dio.get('$api/PatientList');
      print(response.data);
    } catch (e) {
      print('HTTP GET request failed: $e');
    }
  }
}
