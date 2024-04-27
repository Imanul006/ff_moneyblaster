import 'package:ff_moneyblaster/core/constants.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    @Default(false) bool isLoading,
    @Default(false) bool isUser,
    @Default(false) bool isUserVerified,
    @Default('') String? gameOptionSelected,
  }) = _AuthState;

  const AuthState._();
}
