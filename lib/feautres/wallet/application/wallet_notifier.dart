import 'package:ff_moneyblaster/feautres/wallet/application/user_wallet_state.dart';
import 'package:riverpod/riverpod.dart';

class WalletNotifier extends StateNotifier<UserWalletState> {
  WalletNotifier() : super(const UserWalletState());

  void selectTab(UserWalletState tab) {
    // state = state.copyWith(selectedWalletTab: tab);
  }
}
