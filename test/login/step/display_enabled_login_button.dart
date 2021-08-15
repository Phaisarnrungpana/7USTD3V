import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> displayEnabledLoginButton(WidgetTester tester) async {
  Finder loginButton = find.byType(ElevatedButton);
  expect(loginButton, findsOneWidget);
  Finder loginBtnAbsorbPointer = find.byKey(Key('LoginBtnAbsorbPointer'));
  expect(loginBtnAbsorbPointer, findsOneWidget);
  bool actual = tester.widget<AbsorbPointer>(loginBtnAbsorbPointer).absorbing;
  expect(actual, false);
}
