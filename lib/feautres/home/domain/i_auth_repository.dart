abstract class IHomeRepository {
  Future<void> signInWithUsernameAndPassword(String userName, String password);

  Future<void> signUpWithUsernameAndPassword({
    required String username,
    required String gameId,
    required String phoneNumber,
    required String password,
  });

  Future<void> logout();

  Future<bool> isUserLoggedIn();
}
