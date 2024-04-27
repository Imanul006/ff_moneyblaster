import 'package:ff_moneyblaster/feautres/Wallet/presentation/widgets/tournament_card.dart';
import 'package:ff_moneyblaster/feautres/wallet/application/user_wallet_state.dart';
import 'package:ff_moneyblaster/feautres/wallet/domain/i_wallet_repository.dart';
import 'package:riverpod/riverpod.dart';

class WalletNotifier extends StateNotifier<UserWalletState> {
  final IWalletRepository _walletRepository;
  
  WalletNotifier(this._walletRepository) : super(const UserWalletState());

  void selectTab(GameState tab) {
    // state = state.copyWith(selectedWalletTab: tab);
  }
  
}
