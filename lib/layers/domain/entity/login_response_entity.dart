import 'package:equatable/equatable.dart';

class LoginResponseEntity with EquatableMixin {
  LoginResponseEntity({
    this.status,
    this.message,
  });

  final String? status;
  final String? message;

  @override
  List<Object?> get props => [
        status,
        message,
      ];
}
