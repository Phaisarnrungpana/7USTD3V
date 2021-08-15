class AuthDataProvider {
  Future<String> loggedIn(
      {required String username, required String password}) {
    return Future.value('authToken');
  }
}
