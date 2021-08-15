// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './step/open_application_and_user_never_login_before.dart';
import './step/display_email_text_field_with_empty_text.dart';
import './step/display_password_text_field_with_empty_text.dart';
import './step/display_disabled_login_button.dart';
import './step/input_invalid_email_format.dart';
import './step/input_password_less_than6_character.dart';
import './step/input_valid_email_format.dart';
import './step/input_password_equal_to8_character.dart';
import './step/display_enabled_login_button.dart';
import './step/tap_login_button_and_request_login_api.dart';
import './step/display_loading_indicator.dart';
import './step/api_response_success_and_goto_home_page.dart';

void main() {
  group('Login', () {
    testWidgets('Goto Login Page', (tester) async {
      await openApplicationAndUserNeverLoginBefore(tester);
      await displayEmailTextFieldWithEmptyText(tester);
      await displayPasswordTextFieldWithEmptyText(tester);
      await displayDisabledLoginButton(tester);
    });
    testWidgets('Cant login if user input invalid email address format', (tester) async {
      await openApplicationAndUserNeverLoginBefore(tester);
      await inputInvalidEmailFormat(tester);
      await displayDisabledLoginButton(tester);
    });
    testWidgets('Cant login if user input password less than 8 character', (tester) async {
      await openApplicationAndUserNeverLoginBefore(tester);
      await inputPasswordLessThan6Character(tester);
      await displayDisabledLoginButton(tester);
    });
    testWidgets('Login success and goto home page', (tester) async {
      await openApplicationAndUserNeverLoginBefore(tester);
      await inputValidEmailFormat(tester);
      await inputPasswordEqualTo8Character(tester);
      await displayEnabledLoginButton(tester);
      await tapLoginButtonAndRequestLoginApi(tester);
      await displayLoadingIndicator(tester);
      await apiResponseSuccessAndGotoHomePage(tester);
    });
  });
}
