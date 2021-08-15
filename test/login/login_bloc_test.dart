import 'package:bloc_test/bloc_test.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:justdev/pages/login/login_bloc.dart';
import 'package:justdev/pages/login/login_event.dart';
import 'package:justdev/pages/login/login_state.dart';
import 'package:justdev/repositories/auth_repository.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthRepository extends Mock implements AuthRepository {}

void main() {
  late LoginBloc loginBloc;
  late AuthRepository authRepository = MockAuthRepository();

  setUp(() {
    EquatableConfig.stringify = true;
    loginBloc = LoginBloc(authRepository: authRepository);
  });

  blocTest<LoginBloc, LoginStateBase>(
    'should emits [LoggedInSuccessState(AuthToken)]',
    build: () {
      when(() => authRepository.loggedIn(
              username: any(named: 'username'),
              password: any(named: 'password')))
          .thenAnswer((_) async => 'authToken');
      return loginBloc;
    },
    act: (bloc) =>
        bloc.add(LoggedInEvent(username: 'username', password: 'password')),
    expect: () => [
      ShowLoadingState(),
      HideLoadingState(),
      LoggedInSuccessState('authToken')
    ],
  );

  final Error error = Error();
  blocTest<LoginBloc, LoginStateBase>(
    'should emits [LoggedInSuccessState(AuthToken)]',
    build: () {
      when(() => authRepository.loggedIn(
          username: any(named: 'username'),
          password: any(named: 'password'))).thenThrow(error);
      return loginBloc;
    },
    act: (bloc) =>
        bloc.add(LoggedInEvent(username: 'username', password: 'password')),
    expect: () => [
      ShowLoadingState(),
      HideLoadingState(),
      LoggedInFailedState(error),
    ],
  );
}
