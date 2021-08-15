import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> inputPasswordLessThan6Character(WidgetTester tester) async {
  Finder passwordTextField = find.byKey(Key('Password'));
  await tester.enterText(passwordTextField, '12345');
}
