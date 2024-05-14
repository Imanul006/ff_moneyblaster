// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: json['id'] as String,
      username: json['username'] as String,
      gameId: json['gameId'] as String,
      phoneNumber: json['phoneNumber'] as String,
      isVerified: json['isVerified'] as bool? ?? false,
      tournamentIds: (json['tournamentIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      referralCode: json['referralCode'] as String?,
      gameStats: GameStats.fromJson(json['gameStats'] as Map<String, dynamic>),
      wallet: WalletModel.fromJson(json['wallet'] as Map<String, dynamic>),
      referredBy: json['referredBy'] as String?,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'gameId': instance.gameId,
      'phoneNumber': instance.phoneNumber,
      'isVerified': instance.isVerified,
      'tournamentIds': instance.tournamentIds,
      'referralCode': instance.referralCode,
      'gameStats': instance.gameStats.toJson(),
      'wallet': instance.wallet.toJson(),
      'referredBy': instance.referredBy,
    };

_$GameStatsImpl _$$GameStatsImplFromJson(Map<String, dynamic> json) =>
    _$GameStatsImpl(
      game: json['game'] as String,
      totalGames: (json['totalGames'] as num?)?.toInt() ?? 0,
      totalKills: (json['totalKills'] as num?)?.toInt() ?? 0,
      totalWins: (json['totalWins'] as num?)?.toInt() ?? 0,
      totalWinAmount: (json['totalWinAmount'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$GameStatsImplToJson(_$GameStatsImpl instance) =>
    <String, dynamic>{
      'game': instance.game,
      'totalGames': instance.totalGames,
      'totalKills': instance.totalKills,
      'totalWins': instance.totalWins,
      'totalWinAmount': instance.totalWinAmount,
    };

_$WalletModelImpl _$$WalletModelImplFromJson(Map<String, dynamic> json) =>
    _$WalletModelImpl(
      balance: (json['balance'] as num?)?.toInt() ?? 0,
      history: (json['history'] as List<dynamic>?)
              ?.map(
                  (e) => TransactionHistory.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$WalletModelImplToJson(_$WalletModelImpl instance) =>
    <String, dynamic>{
      'balance': instance.balance,
      'history': instance.history,
    };

_$TransactionHistoryImpl _$$TransactionHistoryImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionHistoryImpl(
      datetime: _dateTimeFromTimestamp(json['datetime'] as Timestamp?),
      transaction: (json['transaction'] as num?)?.toInt() ?? 0,
      transactionStatus: json['transactionStatus'] as String? ?? '',
      transactionType: json['transactionType'] as String? ?? '',
      transactionId: json['transactionId'] as String? ?? '',
    );

Map<String, dynamic> _$$TransactionHistoryImplToJson(
        _$TransactionHistoryImpl instance) =>
    <String, dynamic>{
      'datetime': _dateTimeToTimestamp(instance.datetime),
      'transaction': instance.transaction,
      'transactionStatus': instance.transactionStatus,
      'transactionType': instance.transactionType,
      'transactionId': instance.transactionId,
    };
