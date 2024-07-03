import 'package:equatable/equatable.dart';

class LoginEntity with EquatableMixin {
  LoginEntity({
    this.email,
    this.password,
  });

  final String? email;
  final String? password;

  @override
  List<Object?> get props => [
        email,
        password,
      ];
}
