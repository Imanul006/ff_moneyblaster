// auth_repository.dart

abstract class IAuthRepository {
  Future<void> signInWithUsernameAndPassword(String userName, String password);

  Future<void> signUpWithUsernameAndPassword(String userName, String password);

  Future<void> logout();

  Future<bool> isUserLoggedIn();
}
