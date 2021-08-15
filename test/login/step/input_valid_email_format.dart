import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> inputValidEmailFormat(WidgetTester tester) async {
  Finder emailTextField = find.byKey(Key('Email'));
  await tester.enterText(emailTextField, 'w.phaisarnrungpana@gmail.com');
}
