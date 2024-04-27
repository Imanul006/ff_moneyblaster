// auth_notifier.dart
import 'package:ff_moneyblaster/feautres/auth/application/auth_state.dart';
import 'package:ff_moneyblaster/feautres/auth/domain/i_auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:riverpod/riverpod.dart';

class AuthNotifier extends StateNotifier<AuthState> {
  final IAuthRepository _authRepository;

  AuthNotifier(this._authRepository) : super(const AuthState());

  void selectGame(String gameSelected) {
    state = state.copyWith(gameOptionSelected: gameSelected, isLoading: false);
  }

  Future<void> checkIsUserVerified() async {
    state = state.copyWith(isLoading: true);
    final status = await _authRepository.isUserVerified();
    state.copyWith(
      isLoading: false,
      isUserVerified: status,
    );
  }

  Future<void> checkCurrentUser() async {
    state = state.copyWith(isLoading: true);
    final isUser = await _authRepository.isUserLoggedIn();
    state.copyWith(
      isLoading: false,
      isUser: isUser,
    );
  }

  Future<void> signIn(String username, String password) async {
    state = state.copyWith(isLoading: true);
    try {
      await _authRepository.signInWithUsernameAndPassword(username, password);
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
