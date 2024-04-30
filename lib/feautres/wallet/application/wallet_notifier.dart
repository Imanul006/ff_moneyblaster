import 'package:ff_moneyblaster/core/constants.dart';
import 'package:ff_moneyblaster/feautres/auth/domain/user_model.dart';
import 'package:ff_moneyblaster/feautres/wallet/application/user_wallet_state.dart';
import 'package:ff_moneyblaster/feautres/wallet/domain/i_wallet_repository.dart';
import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';

class WalletNotifier extends StateNotifier<UserWalletState> {
  IWalletRepository _walletRepository;
  WalletNotifier(this._walletRepository) : super(const UserWalletState()) {
    fetchUserDetails();
  }

  void selectTab(UserWalletState tab) {
    // state = state.copyWith(selectedWalletTab: tab);
  }

  Future<void> fetchUserDetails() async {
    state = state.copyWith(isLoading: true);
    try {
      UserModel user = await _walletRepository.getUserModel();
      state = state.copyWith(user: user, isLoading: false);
      print("Wallet Balance: ${user.wallet.balance}/-");
      print("Wallet Transactions: ${user.wallet.history}/-");
    } catch (e) {
      state = state.copyWith(errorMessage: e.toString(), isLoading: false);
    }
  }

  String getTransactionStatusText(String status) {
    switch (status) {
      case 'success':
        return '';
      case 'rejected':
        return 'rejected';
      default:
        return 'requested';
    }
  }

  Color getTransactionTextColor(String type) {
    switch (type) {
      case 'deposit':
        return AppColors.blue;
      case 'withdraw':
        return AppColors.red;
      case 'entryfee':
        return AppColors.red;
      case 'winning':
        return AppColors.blue;    
      default:
        return AppColors.blue;
    }
  }

  String getTransactionTypeText(String type) {
    switch (type) {
      case 'deposit':
        return 'Deposit';
      case 'withdraw':
        return 'Withdrawal';
      case 'winning':
        return 'Winning';     
      default:
        return 'Entry fee deduction';
    }
  }

  int calculateTotalTransactionsInLast24Hours(WalletModel wallet) {
    DateTime now = DateTime.now();

    var recentTransactions = wallet.history.where((transaction) {
      return transaction.datetime!
          .isAfter(now.subtract(const Duration(hours: 24)));
    });

    int totalAmount =
        recentTransactions.fold(0, (sum, current) => sum + current.transaction);

    return totalAmount;
  }
}
