import 'dart:convert';

import 'package:ayurcare/layers/data/dto/login_dto.dart';
import 'package:ayurcare/layers/data/source/network/login_api.dart';
import 'package:ayurcare/layers/domain/entity/login_entity.dart';

class LoginRepository {

  @override
  Future<void> postLoginRepository({email, password}) async {
    final loginEntity = LoginEntity(email: email, password: password);
    final loginApi = LoginApi();
    print(loginEntity.email);
    print(loginEntity.password);
    
    print("-------------------------------------------------------");

    loginApi.postLoginData(loginEntity.email, loginEntity.password);

    
  }
}