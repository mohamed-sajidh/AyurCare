import 'dart:convert';
import 'package:ayurcare/layers/domain/entity/login_entity.dart';

class LoginDto extends LoginEntity {
  LoginDto({super.email, super.password});

  factory LoginDto.fromRawJson(String str) => 
      LoginDto.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LoginDto.fromJson(Map<String, dynamic> json) => LoginDto(
        email: json["email"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {"email": email, "password": password};
}
