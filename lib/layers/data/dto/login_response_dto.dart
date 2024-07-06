import 'dart:convert';

import 'package:ayurcare/layers/domain/entity/login_response_entity.dart';

class LoginResonseDto extends LoginResponseEntity {
  
  LoginResonseDto({
    required String status,
    required String message,
  }) : super(status: status, message: message);

  factory LoginResonseDto.fromRawJson(String str) =>
      LoginResonseDto.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LoginResonseDto.fromJson(Map<String, dynamic> json) =>
      LoginResonseDto(
        status: json["status"] ?? '',
        message: json["message"] ?? '',
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
      };
}







// class ProfileModel {
//   int id;
//   String name;
//   String username;
//   String email;
//   Address address;
//   String phone;
//   String website;
//   Company company;

//   ProfileModel(
//       {required this.id,
//       required this.name,
//       required this.username,
//       required this.email,
//       required this.address,
//       required this.phone,
//       required this.website,
//       required this.company});

//   factory ProfileModel.fromRawJson(String str) =>
//       ProfileModel.fromJson(json.decode(str));

//   String toRawJson() => json.encode(toJson());

//   factory ProfileModel.fromJson(Map<String, dynamic> json) => ProfileModel(
//       id: json["id"],
//       name: json["name"],
//       username: json["username"],
//       email: json["email"],
//       address: Address.fromJson(json["address"]),
//       phone: json["phone"],
//       website: json["website"],
//       company: Company.fromJson(json["company"]));

//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "name": name,
//         "username": username,
//         "email": email,
//         "address": address.toJson(),
//         "phone": phone,
//         "website": website,
//         "company": company.toJson()
//       };
// }