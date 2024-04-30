import 'package:ff_moneyblaster/feautres/auth/domain/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_wallet_state.freezed.dart';

@freezed
class UserWalletState with _$UserWalletState {
  const factory UserWalletState({
    @Default(false) bool isLoading,
    UserModel? user,
    @Default('') String errorMessage,
  }) = _UserWalletState;

  const UserWalletState._();
}
