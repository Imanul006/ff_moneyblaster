import 'package:ff_moneyblaster/feautres/auth/application/auth_state.dart';
import 'package:riverpod/riverpod.dart';

class AuthNotifier extends StateNotifier<AuthState> {
  AuthNotifier() : super(const AuthState());
}
