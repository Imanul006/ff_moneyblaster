import 'package:ff_moneyblaster/feautres/auth/application/auth_notifier.dart';
import 'package:ff_moneyblaster/feautres/auth/application/auth_state.dart';
import 'package:riverpod/riverpod.dart';

final authProvider = StateNotifierProvider.autoDispose<AuthNotifier, AuthState>(
    (ref) => AuthNotifier());
