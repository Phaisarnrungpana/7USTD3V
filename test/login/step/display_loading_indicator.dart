import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> displayLoadingIndicator(WidgetTester tester) async {
  Finder loading = find.byType(CircularProgressIndicator);
  expect(loading, findsOneWidget);
}
