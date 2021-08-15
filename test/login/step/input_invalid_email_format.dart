import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> inputInvalidEmailFormat(WidgetTester tester) async {
  Finder emailTextField = find.byKey(Key('Email'));
  await tester.enterText(emailTextField, 'w.phaisarnrungpana');
}
