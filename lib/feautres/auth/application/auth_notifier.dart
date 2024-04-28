// auth_notifier.dart
import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ff_moneyblaster/feautres/auth/application/auth_state.dart';
import 'package:ff_moneyblaster/feautres/auth/domain/i_auth_repository.dart';
import 'package:ff_moneyblaster/feautres/auth/domain/user_model.dart';
import 'package:ff_moneyblaster/feautres/auth/shared/provider.dart';
import 'package:ff_moneyblaster/routes/app_router.gr.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:riverpod/riverpod.dart';

class AuthNotifier extends StateNotifier<AuthState> {
  final IAuthRepository _authRepository;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  AuthNotifier(this._authRepository) : super(const AuthState());

  void selectGame(String gameSelected) {
    state = state.copyWith(gameOptionSelected: gameSelected, isLoading: false);
  }

  Future<bool> isCurrentUserVerified(BuildContext context,
      {required Timer timer}) async {
    try {
      User? currentUser = _auth.currentUser;
      if (currentUser != null) {
        DocumentSnapshot userDoc =
            await _firestore.collection('appusers').doc(currentUser.uid).get();
        if (userDoc.exists) {
          UserModel user =
              UserModel.fromJson(userDoc.data() as Map<String, dynamic>);
          bool res = user.isVerified;
          if (res) {
            timer.cancel();
            if (context.mounted) {
              context.router.replaceAll([const BaseRoute()]);
            }
          }
        }
      }
      return false;
    } catch (e) {
      print('Error checking if user is verified: $e');
      return false;
    }
  }

  Future<bool> checkIsUserVerified() async {
    state = state.copyWith(isLoading: true);
    final status = await _authRepository.isUserVerified();
    // state = state.copyWith(
    //   isLoading: false,
    //   isUserVerified: status,
    // );
    return status;
  }

  Future<bool> checkCurrentUser() async {
    state = state.copyWith(isLoading: true);
    final isUser = await _authRepository.isUserLoggedIn();
    state = state.copyWith(
      isLoading: false,
      isUser: isUser,
    );
    return isUser;
  }

  Future<void> signIn(BuildContext context,
      {required String username, required String password}) async {
    state = state.copyWith(isLoading: true);
    try {
      bool res = await _authRepository.signInWithUsernameAndPassword(
          username, password);
      if (res && context.mounted) {
        await context.router.replaceAll([const LoadingScreen()]);
      }
      state = state.copyWith(isLoading: false);
    } catch (e) {
      state = state.copyWith(isLoading: false);
      rethrow;
    }
  }

  Future<void> signUp({
    required String username,
    required String gameId,
    required String phoneNumber,
    required String password,
    VoidCallback? voidCallback,
  }) async {
    try {
      final result = await _authRepository.signUpWithUsernameAndPassword(
        username: username,
        gameId: gameId,
        phoneNumber: phoneNumber,
        password: password,
        gameOptionSelected: state.gameOptionSelected!,
      );

      if (result) {
        // Sign-up was successful
        print("Result = $result");
        voidCallback?.call();
      } else {
        // Sign-up failed
        // Handle the failure
      }
      state = state.copyWith(isLoading: false);
    } catch (e) {
      state = state.copyWith(isLoading: false);
      rethrow;
    }
  }

  Future<void> logout() async {
    await _authRepository.logout();
  }
}
