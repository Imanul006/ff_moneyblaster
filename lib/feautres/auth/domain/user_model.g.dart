// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      username: json['username'] as String,
      gameId: json['gameId'] as String,
      phoneNumber: json['phoneNumber'] as String,
      isVerified: json['isVerified'] as bool? ?? false,
      tournamentIds: (json['tournamentIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      gameStats: GameStats.fromJson(json['gameStats'] as Map<String, dynamic>),
      wallet: WalletModel.fromJson(json['wallet'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'gameId': instance.gameId,
      'phoneNumber': instance.phoneNumber,
      'isVerified': instance.isVerified,
      'tournamentIds': instance.tournamentIds,
      'gameStats': instance.gameStats.toJson(),
      'wallet': instance.wallet.toJson(),
    };

_$GameStatsImpl _$$GameStatsImplFromJson(Map<String, dynamic> json) =>
    _$GameStatsImpl(
      game: json['game'] as String,
      totalGames: (json['totalGames'] as num?)?.toInt() ?? 0,
      totalKills: (json['totalKills'] as num?)?.toInt() ?? 0,
      totalWins: (json['totalWins'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$GameStatsImplToJson(_$GameStatsImpl instance) =>
    <String, dynamic>{
      'game': instance.game,
      'totalGames': instance.totalGames,
      'totalKills': instance.totalKills,
      'totalWins': instance.totalWins,
    };

_$WalletModelImpl _$$WalletModelImplFromJson(Map<String, dynamic> json) =>
    _$WalletModelImpl(
      balance: (json['balance'] as num?)?.toInt() ?? 0,
      history: (json['history'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$WalletModelImplToJson(_$WalletModelImpl instance) =>
    <String, dynamic>{
      'balance': instance.balance,
      'history': instance.history,
    };
