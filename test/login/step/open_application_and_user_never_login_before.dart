import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:justdev/pages/login/login_bloc.dart';
import 'package:justdev/pages/login/login_event.dart';
import 'package:justdev/pages/login/login_page.dart';
import 'package:justdev/pages/login/login_state.dart';
import 'package:mocktail/mocktail.dart';

class MockLoginBloc extends MockBloc<LoginEventBase, LoginStateBase>
    implements LoginBloc {}

Future<void> openApplicationAndUserNeverLoginBefore(WidgetTester tester) async {
  LoginBloc loginBloc = MockLoginBloc();

  await tester.pumpWidget(
    BlocProvider<LoginBloc>.value(
      value: loginBloc,
      child: MaterialApp(
        home: Scaffold(
          body: LoginPage(),
        ),
      ),
    ),
  );

  when(() => loginBloc.state).thenReturn(InitialState());
}
