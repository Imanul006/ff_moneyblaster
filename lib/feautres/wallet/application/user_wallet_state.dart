import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_wallet_state.freezed.dart';

@freezed
class UserWalletState with _$UserWalletState {
  const factory UserWalletState({
    @Default(false) bool isLoading,
  }) = _UserWalletState;

  const UserWalletState._();
}
