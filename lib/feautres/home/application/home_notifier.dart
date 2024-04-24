// auth_notifier.dart
import 'package:ff_moneyblaster/feautres/auth/application/auth_state.dart';
import 'package:ff_moneyblaster/feautres/auth/domain/i_auth_repository.dart';
import 'package:riverpod/riverpod.dart';

class AuthNotifier extends StateNotifier<AuthState> {
  final IAuthRepository _authRepository;
  
  AuthNotifier(this._authRepository) : super(const AuthState());

  Future<void> signIn(String username, String password) async {
    state = const AuthState(isLoading: true);
    try {
      await _authRepository.signInWithUsernameAndPassword(username, password);
      state = const AuthState(isLoading: false);
    } catch (e) {
      state = const AuthState(isLoading: false);
      rethrow;
    }
  }

  Future<void> signUp({
    required String username,
    required String gameId,
    required String phoneNumber,
    required String password,
  }) async {
    state = const AuthState(isLoading: true);
    try {
      await _authRepository.signUpWithUsernameAndPassword(username: username, gameId: gameId, phoneNumber: phoneNumber, password: password);
      state = const AuthState(isLoading: false);
    } catch (e) {
      state = const AuthState(isLoading: false);
      rethrow;
    }
  }

  Future<void> logout() async {
    await _authRepository.logout();
  }
}