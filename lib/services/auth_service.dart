// firebase_auth_repository.dart

import 'package:ff_moneyblaster/feautres/auth/domain/i_auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthRepository implements IAuthRepository {
  final FirebaseAuth _firebaseAuth;

  FirebaseAuthRepository(this._firebaseAuth);

  @override
  Future<void> signInWithUsernameAndPassword(
      String username, String password) async {
    // Implement your custom authentication logic here
  }

  @override
  Future<void> signUpWithUsernameAndPassword(
      String username, String password) async {
    // Implement your custom authentication logic here
  }

  @override
  Future<void> logout() async {
    try {
      await _firebaseAuth.signOut();
    } catch (e) {
      // Handle error
      rethrow;
    }
  }

  @override
  Future<bool> isUserLoggedIn() async {
    final user = _firebaseAuth.currentUser;
    return user != null;
  }
}
