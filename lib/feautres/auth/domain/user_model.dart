import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  @JsonSerializable(explicitToJson: true)
  const factory UserModel({
    required String username,
    required String gameId,
    required String phoneNumber,
    @Default(false) bool isVerified,
    @Default([]) List<String> tournamentIds,
    required GameStats gameStats,
    required WalletModel wallet,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}

@freezed
class GameStats with _$GameStats {
  @JsonSerializable()
  const factory GameStats({
    required String game,
    @Default(0) int totalGames,
    @Default(0) int totalKills,
    @Default(0) int totalWins,
  }) = _GameStats;

  factory GameStats.fromJson(Map<String, dynamic> json) => _$GameStatsFromJson(json);
}

@freezed
class WalletModel with _$WalletModel {
  @JsonSerializable()
  const factory WalletModel({
    @Default(0) int balance,
    @Default([]) List<String> history,
  }) = _WalletModel;

  factory WalletModel.fromJson(Map<String, dynamic> json) => _$WalletModelFromJson(json);
}
