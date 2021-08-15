import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> displayEmailTextFieldWithEmptyText(WidgetTester tester) async {
  Finder emailTextField = find.byKey(Key('Email'));
  expect(emailTextField, findsOneWidget);
  String actual = tester.widget<TextField>(emailTextField).controller!.text;
  expect(actual, '');
}
