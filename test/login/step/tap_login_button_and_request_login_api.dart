import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> tapLoginButtonAndRequestLoginApi(WidgetTester tester) async {
  Finder loginButton = find.byType(ElevatedButton);
  await tester.tap(loginButton);
}
