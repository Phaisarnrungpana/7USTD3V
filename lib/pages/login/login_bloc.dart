import 'package:bloc/bloc.dart';
import 'package:justdev/pages/login/login_event.dart';
import 'package:justdev/pages/login/login_state.dart';
import 'package:justdev/repositories/auth_repository.dart';

class LoginBloc extends Bloc<LoginEventBase, LoginStateBase> {
  final AuthRepository authRepository;

  LoginBloc({
    required this.authRepository,
  }) : super(InitialState());

  @override
  Stream<LoginStateBase> mapEventToState(LoginEventBase event) async* {
    if (event is LoggedInEvent) yield* mapLoggedInEventToState(event);
  }

  Stream<LoginStateBase> mapLoggedInEventToState(LoggedInEvent event) async* {
    try {
      yield ShowLoadingState();
      String authToken = await authRepository.loggedIn(
          username: event.username, password: event.password);
      yield HideLoadingState();
      yield LoggedInSuccessState(authToken);
    } catch (error) {
      yield HideLoadingState();
      yield LoggedInFailedState(error);
    }
  }
}
