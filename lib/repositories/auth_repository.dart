import 'package:justdev/data_providers/auth_data_provider.dart';

class AuthRepository {
  final AuthDataProvider dataProvider = AuthDataProvider();

  Future<String> loggedIn(
          {required String username, required String password}) =>
      dataProvider.loggedIn(username: username, password: password);
}
