import 'package:ff_moneyblaster/feautres/auth/domain/user_model.dart';

abstract class IWalletRepository {
  Future<bool> addTransactionToWallet(Map<String, dynamic> transaction);
  Future<UserModel> getUserModel();
}
