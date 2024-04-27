import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';

@freezed
abstract class UserModel with _$UserModel {
  const factory UserModel({
    required String username,
    required String gameId,
    required String phoneNumber,
    @Default(false) bool isVerified,
    @Default([]) List<String> tournamentIds,
    required GameStats gameStats,
    required WalletModel wallet,
  }) = _UserModel;
}

@freezed
abstract class GameStats with _$GameStats {
  const factory GameStats({
    required String game,
    @Default(0) int totalGames,
    @Default(0) int totalKills,
    @Default(0) int totalWins,
  }) = _GameStats;
}

@freezed
abstract class WalletModel with _$WalletModel {
  const factory WalletModel({
    @Default(0) int balance,
    @Default([]) List<String> history,
  }) = _WalletModel;
}
