import 'package:equatable/equatable.dart';

abstract class LoginStateBase extends Equatable {
  const LoginStateBase();

  @override
  List<Object?> get props => [];
}

class InitialState extends LoginStateBase {}

class ShowLoadingState extends LoginStateBase {}

class HideLoadingState extends LoginStateBase {}

class LoggedInSuccessState extends LoginStateBase {
  final String authToken;

  const LoggedInSuccessState(this.authToken);

  @override
  List<Object?> get props => [authToken];
}

class LoggedInFailedState extends LoginStateBase {
  final Object error;

  const LoggedInFailedState(this.error);

  @override
  List<Object?> get props => [error];
}
