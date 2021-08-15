import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> displayPasswordTextFieldWithEmptyText(WidgetTester tester) async {
  Finder passwordTextField = find.byKey(Key('Password'));
  expect(passwordTextField, findsOneWidget);
  String actual = tester.widget<TextField>(passwordTextField).controller!.text;
  expect(actual, '');
}
