// auth_repository.dart

import 'dart:async';

import 'package:ff_moneyblaster/feautres/auth/domain/user_model.dart';
import 'package:flutter/material.dart';

abstract class IAuthRepository {
  Future<bool> signInWithUsernameAndPassword(String userName, String password);

  Future<bool> signUpWithUsernameAndPassword({
    required String username,
    required String gameId,
    required String phoneNumber,
    required String password,
    required String gameOptionSelected,
    required String refferedBy,
  });

  Future<void> logout();

  Future<bool> isUserLoggedIn();
  Future<bool> isUserVerified();
  Future<UserModel> getUserModel();
  Future<void> verifyNumber(
      {required String number,
      BuildContext? context,
      VoidCallback? successCallBack});
}
