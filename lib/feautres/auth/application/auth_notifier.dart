// auth_notifier.dart
// ignore_for_file: unnecessary_const

import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ff_moneyblaster/feautres/auth/application/auth_state.dart';
import 'package:ff_moneyblaster/feautres/auth/domain/i_auth_repository.dart';
import 'package:ff_moneyblaster/feautres/auth/domain/user_model.dart';
import 'package:ff_moneyblaster/routes/app_router.gr.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';

class AuthNotifier extends StateNotifier<AuthState> {
  final IAuthRepository _authRepository;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  UserModel? _user;

  UserModel? get user => _user;

  AuthNotifier(this._authRepository) : super(const AuthState());

  void selectGame(String gameSelected) {
    state = state.copyWith(gameOptionSelected: gameSelected, isLoading: false);
  }

  Future<void> fetchCurrentUserData() async {
    state = state.copyWith(isLoading: true);
    User? currentUser = _auth.currentUser;
    if (currentUser != null) {
      final userDocRef = _firestore.collection('appusers').doc(currentUser.uid);
      DocumentSnapshot userDoc = await userDocRef.get();
      if (userDoc.exists) {
        _user = UserModel.fromJson(userDoc.data() as Map<String, dynamic>);
      }
    }
    state = state.copyWith(isLoading: false);
  }

  Future<void> calculateAndUpdateTotalEarning() async {
    User? currentUser = _auth.currentUser;
    if (currentUser != null) {
      final userDocRef = _firestore.collection('appusers').doc(currentUser.uid);
      DocumentSnapshot userDoc = await userDocRef.get();
      if (userDoc.exists) {
        UserModel user =
            UserModel.fromJson(userDoc.data() as Map<String, dynamic>);

        double totalEarning = 0;

        for (var element in user.wallet.history) {
          if (element.transaction > 0 &&
              element.transactionStatus != "success") {
            totalEarning += element.transaction;
          }
        }

        await userDocRef.update({'gameStats.totalWinAmount': totalEarning});
      }
    }
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
      debugPrint('Error checking if user is verified: $e');
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

  Future<String?> findUserIdByReferralCode(String referralCode) async {
    QuerySnapshot querySnapshot = await _firestore
        .collection('usernames')
        .where('referralCode', isEqualTo: referralCode.trim())
        .get();

    // Check if the query returned any documents
    if (querySnapshot.docs.isNotEmpty) {
      Map<String, dynamic> data =
          querySnapshot.docs.first.data() as Map<String, dynamic>;
      return data['userId'] as String?;
    } else {
      return null;
    }
  }

  Future<void> signUp(
    BuildContext context, {
    required String username,
    required String gameId,
    required String phoneNumber,
    required String password,
    required String referralCode,
    VoidCallback? voidCallback,
  }) async {
    try {
      String? referredBy;
      if (referralCode.trim().isNotEmpty) {
        referredBy = await findUserIdByReferralCode(referralCode);
        if (referredBy == null) {
          if (context.mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: const Text(
                  "Please enter a valid referral code.",
                ),
              ),
            );
            state = state.copyWith(isLoading: false);
            return;
          }
        }
      }

      final result = await _authRepository.signUpWithUsernameAndPassword(
        username: username,
        gameId: gameId,
        phoneNumber: phoneNumber,
        password: password,
        refferedBy: referredBy ?? '',
        gameOptionSelected: state.gameOptionSelected!,
      );

      if (result) {
        voidCallback?.call();
      } else {}
      state = state.copyWith(isLoading: false);
    } catch (e) {
      state = state.copyWith(isLoading: false);
      rethrow;
    }
  }

  Future<void> logout() async {
    await _authRepository.logout();
  }

  Future<void> verifyNumber(
      BuildContext context, VoidCallback? voidCallback) async {
        state = state.copyWith(isOtpSent: true);
    try {
      await _authRepository.verifyNumber(
          number: state.number,
          context: context,
          successCallBack: () {
            // voidCallback?.call();
          });
    } catch (e) {
      rethrow;
    }
  }

  void setNumber(String number) {
    state = state.copyWith(number: number);
  }
}
