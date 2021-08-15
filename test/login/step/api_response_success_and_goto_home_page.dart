import 'package:flutter_test/flutter_test.dart';
import 'package:justdev/pages/home/home_page.dart';

Future<void> apiResponseSuccessAndGotoHomePage(WidgetTester tester) async {
  Finder homePage = find.byType(HomePage);
  expect(homePage, findsOneWidget);
}
