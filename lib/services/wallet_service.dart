import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ff_moneyblaster/feautres/wallet/domain/i_wallet_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';

class WalletRepository implements IWalletRepository {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  Future<void> signUpWithUsernameAndPassword({
    required String username,
    required String gameId,
    required String phoneNumber,
    required String password,
  }) async {
    try {
      var existingEmail = await _firestore.collection('usernames').doc(username).get();
      if (existingEmail.exists) {
        throw FirebaseAuthException(
          code: 'username-already-in-use',
          message: 'Username is already taken.',
        );
      }

      UserCredential userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
        email: '$username@yourappdomain.com', 
        password: password,
      );


      await _firestore.collection('users').doc(userCredential.user!.uid).set({
        'username': username,
        'gameId': gameId,
        'phoneNumber': phoneNumber,
        'email': userCredential.user!.email,
      });


      await _firestore.collection('usernames').doc(username).set({
        'userId': userCredential.user!.uid,
      });
    } on FirebaseAuthException catch (e) {
      rethrow; 
    }
  }

  @override
  Future<void> signInWithUsernameAndPassword(String username, String password) async {
  var email = await _getEmailForUsername(username);
  if (email == null) {
    throw FirebaseAuthException(
      code: 'user-not-found',
      message: 'No user found for that username.',
    );
  }
  
  await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password).then((value) => null);
}


  Future<String?> _getEmailForUsername(String username) async {
    var docSnapshot = await _firestore.collection('usernames').doc(username).get();
    return docSnapshot.data()?['email'] as String?;
  }

  @override
  Future<void> logout() async {
    return _firebaseAuth.signOut();
  }

  @override
  Future<bool> isUserLoggedIn() async {
    var user = _firebaseAuth.currentUser;
    return user != null;
  }
}
