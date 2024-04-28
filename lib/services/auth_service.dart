// firebase_auth_repository.dart

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ff_moneyblaster/feautres/auth/domain/i_auth_repository.dart';
import 'package:ff_moneyblaster/feautres/auth/domain/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthRepository implements IAuthRepository {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  Future<bool> signUpWithUsernameAndPassword({
    required String username,
    required String gameId,
    required String phoneNumber,
    required String password,
    required String gameOptionSelected,
  }) async {
    try {
      var existingEmail =
          await _firestore.collection('usernames').doc(username).get();
      if (existingEmail.exists) {
        throw FirebaseAuthException(
          code: 'username-already-in-use',
          message: 'Username is already taken.',
        );
      }

      UserCredential userCredential =
          await _firebaseAuth.createUserWithEmailAndPassword(
        email: '$username@moneyblaster.com',
        password: password,
      );

      final UserModel user = UserModel(
        username: username,
        gameId: gameId,
        phoneNumber: phoneNumber,
        gameStats: GameStats(game: gameOptionSelected),
        wallet: WalletModel(),
      );

      Map<String, dynamic> data = {
        'username': user.username,
        'gameId': user.gameId,
        'phoneNumber': user.phoneNumber,
        'email': userCredential.user!.email,
        'isVerified': user.isVerified,
        'gameStats': user.gameStats.toJson(),
        'wallet': user.wallet.toJson(),
      };
      print(data);

      await _firestore
          .collection('appusers')
          .doc(userCredential.user!.uid)
          .set(data);

      await _firestore.collection('usernames').doc(username).set({
        'userId': userCredential.user!.uid,
      });

      // await _firestore.collection('test').doc('testDoc').set({'testField': 'testValue'});

      return true;
    } on FirebaseAuthException catch (e) {
      print(e);
      rethrow;
    }
  }

  @override
  Future<bool> signInWithUsernameAndPassword(
      String username, String password) async {
    var email = await _getEmailForUsername(username);
    if (email == null) {
      throw FirebaseAuthException(
        code: 'user-not-found',
        message: 'No user found for that username.',
      );
    }

    try {
      await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
    print('Sign-in successful.');
    return true;
    } catch (e) {
       print('Sign-in failed: $e');
    return false;
    }

    
  }

  Future<String?> _getEmailForUsername(String username) async {
    if (username.isEmpty) {
      return null;
    }

    return "$username@moneyblaster.com";
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

  @override
  Future<bool> isUserVerified() async {
    try {
      var userDoc = await _firestore
          .collection('appusers')
          .doc(_firebaseAuth.currentUser!.uid)
          .get();
      if (!userDoc.exists) {
        throw FirebaseAuthException(
          code: 'user-not-found',
          message: 'No user found with that username.',
        );
      }
      var isVerified = userDoc.data()?['isVerified'];
      return isVerified ?? false;
    } catch (e) {
      throw FirebaseAuthException(
        code: 'user-verification-error',
        message: 'Error occurred while verifying user.',
      );
    }
  }

  @override
  Future<UserModel> getUserModel() async {
    try {
      var userDoc = await _firestore
          .collection('users')
          .doc(_firebaseAuth.currentUser!.uid)
          .get();
      if (!userDoc.exists) {
        throw FirebaseAuthException(
          code: 'user-not-found',
          message: 'No user found with that ID.',
        );
      }
      var userData = userDoc.data();
      return UserModel(
        username: userData?['username'],
        gameId: userData?['gameId'],
        phoneNumber: userData?['phoneNumber'],
        isVerified: userData?['isVerified'] ?? false,
        gameStats: GameStats(
          game: userData?['gameStats']['game'],
          totalGames: userData?['gameStats']['totalGames'] ?? 0,
          totalKills: userData?['gameStats']['totalKills'] ?? 0,
          totalWins: userData?['gameStats']['totalWins'] ?? 0,
        ),
        wallet: WalletModel(
          balance: userData?['wallet']['balance'] ?? 0.0,
          history: List<String>.from(userData?['wallet']['history'] ?? []),
        ),
      );
    } catch (e) {
      throw FirebaseAuthException(
        code: 'user-fetch-error',
        message: 'Error occurred while fetching user data.',
      );
    }
  }
}
