import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ff_moneyblaster/core/constants.dart';
import 'package:ff_moneyblaster/feautres/auth/domain/user_model.dart';
import 'package:ff_moneyblaster/feautres/wallet/application/user_wallet_state.dart';
import 'package:ff_moneyblaster/feautres/wallet/domain/i_wallet_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
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

  RefreshController refreshController =
      RefreshController(initialRefresh: false);

  ScrollController scrollController = ScrollController();

  void dispose() async {
    scrollController.dispose();
    refreshController.dispose();
  }

  void onRefresh() async {
    // monitor network fetch
    // Store current scroll position
    double _scrollPosition = scrollController.position.pixels;
    if (mounted) await fetchUserDetails();
    // if failed,use refreshFailed()
    refreshController.refreshCompleted();
    // scrollController.jumpTo(_scrollPosition);
  }

  void onLoading() async {
    // monitor network fetch
    double _scrollPosition = scrollController.position.pixels;

    // if failed,use loadFailed(),if no data return,use LoadNodata()

    refreshController.loadComplete();
    // scrollController.jumpTo(_scrollPosition);
  }

  Future<void> getQr() async {
    final qrs = await _walletRepository.getQrs();
    state = state.copyWith(
        qr: qrs.singleWhere((element) => element.isDefault == true));
  }

  void selectTab(WalletTab tab) {
    state = state.copyWith(selectedWalletTab: tab);
  }

  Future<void> requestWithdraw(
    BuildContext context, {
    required String name,
    required String accountNo,
    required String ifscCode,
    required double amount,
  }) async {
    state = state.copyWith(isLoading: true);
    Map<String, dynamic> newTransaction = {
      'datetime': Timestamp.now(),
      'transaction': amount,
      'transactionStatus': 'requested',
      'transactionType': 'withdraw',
      'fullName': name,
      'accountNo': accountNo,
      'ifscCode': ifscCode,
    };
    bool result =
        await _walletRepository.addTransactionToWallet(newTransaction);
    state = state.copyWith(isLoading: false);
    if (context.mounted) {
      if (result) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
              'Withdraw requested. It will reflect in your bank account, once we verify.',
            ),
            duration: Duration(seconds: 3),
          ),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
              'Something went wrong, please try again.',
            ),
            duration: Duration(seconds: 3),
          ),
        );
      }
    }
  }

  Future<void> requestDeposit(
    BuildContext context, {
    required String transactionId,
    required double amount,
  }) async {
    state = state.copyWith(isLoading: true);
    Map<String, dynamic> newTransaction = {
      'datetime': Timestamp.now(),
      'transaction': amount,
      'transactionStatus': 'requested',
      'transactionType': 'deposit',
      'transactionId': transactionId,
    };
    bool result =
        await _walletRepository.addTransactionToWallet(newTransaction);
    state = state.copyWith(isLoading: false);
    if (context.mounted) {
      if (result) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
              'Deposit requested. It will reflect in your wallet, once we verify.',
            ),
            duration: Duration(seconds: 3),
          ),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
              'Something went wrong, please try again.',
            ),
            duration: Duration(seconds: 3),
          ),
        );
      }
    }
  }

  Future<void> fetchUserDetails() async {
    if (!mounted) {
      // Check if the widget is still mounted before proceeding
      return;
    }
    state = state.copyWith(isLoading: true);
    try {
      UserModel user = await _walletRepository.getUserModel();
      state = state.copyWith(user: user, isLoading: false);
      withdrawalTransactions = state.user!.wallet.history
          .where((history) =>
              history.transaction > 0 && history.transactionType == 'withdraw')
          .toList();
      depositTransactions = state.user!.wallet.history
          .where((history) =>
              history.transaction > 0 && history.transactionType == 'deposit')
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
