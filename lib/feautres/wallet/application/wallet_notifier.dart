import 'package:ff_moneyblaster/core/constants.dart';
import 'package:ff_moneyblaster/feautres/auth/domain/user_model.dart';
import 'package:ff_moneyblaster/feautres/wallet/application/user_wallet_state.dart';
import 'package:ff_moneyblaster/feautres/wallet/domain/i_wallet_repository.dart';
import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';

enum WalletTab {
  withdraw,
  deposit,
}

class WalletNotifier extends StateNotifier<UserWalletState> {
  final IWalletRepository _walletRepository;
  WalletNotifier(this._walletRepository) : super(const UserWalletState()) {
    fetchUserDetails();
  }

  List<TransactionHistory> withdrawalTransactions = [];
  List<TransactionHistory> depositTransactions = [];

  void selectTab(WalletTab tab) {
    state = state.copyWith(selectedWalletTab: tab);
  }

  Future<void> fetchUserDetails() async {
    state = state.copyWith(isLoading: true);
    try {
      UserModel user = await _walletRepository.getUserModel();
      state = state.copyWith(user: user, isLoading: false);
      withdrawalTransactions = state.user!.wallet.history
          .where((history) => history.transaction < 0)
          .toList();
      depositTransactions = state.user!.wallet.history
          .where((history) => history.transaction > 0)
          .toList();
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
      case 'referral':
        return 'Referral commission';
      default:
        return 'Entry fee deduction';
    }
  }

  int calculateTotalTransactionsInLast24Hours() {
    WalletModel wallet = state.user!.wallet;
    DateTime now = DateTime.now();

    var recentTransactions = wallet.history.where((transaction) {
      return transaction.datetime!
              .isAfter(now.subtract(const Duration(hours: 24))) &&
          transaction.transactionStatus == "success";
    });

    int totalAmount = recentTransactions.fold(
      0,
      (sum, current) => sum + current.transaction,
    );

    return totalAmount;
  }
}
