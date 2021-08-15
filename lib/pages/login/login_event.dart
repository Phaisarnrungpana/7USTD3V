import 'package:equatable/equatable.dart';

abstract class LoginEventBase extends Equatable {
  const LoginEventBase();

  @override
  List<Object?> get props => [];
}

class LoggedInEvent extends LoginEventBase {
  final String username;
  final String password;

  const LoggedInEvent({required this.username, required this.password});

  @override
  List<Object?> get props => [username, password];
}
