// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tournament.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GameTypeImpl _$$GameTypeImplFromJson(Map<String, dynamic> json) =>
    _$GameTypeImpl(
      gameCamera: json['gameCamera'] as String?,
      gameMap: json['gameMap'] as String?,
      teamOption: json['teamOption'] as String?,
    );

Map<String, dynamic> _$$GameTypeImplToJson(_$GameTypeImpl instance) =>
    <String, dynamic>{
      'gameCamera': instance.gameCamera,
      'gameMap': instance.gameMap,
      'teamOption': instance.teamOption,
    };

_$TournamentImpl _$$TournamentImplFromJson(Map<String, dynamic> json) =>
    _$TournamentImpl(
      createdAt: json['created_at'] as String?,
      dateTime: _dateTimeFromTimestamp(json['dateTime'] as Timestamp?),
      uid: json['uid'] as String?,
      entryFee: (json['entryFee'] as num?)?.toInt(),
      gameType: json['gameType'] == null
          ? null
          : GameType.fromJson(json['gameType'] as Map<String, dynamic>),
      gameOption: json['gameOption'] as String?,
      lastUpdatedAt: json['last_updated_at'] as String?,
      perKill: (json['perKill'] as num?)?.toInt(),
      prizePool: (json['prizePool'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      status:
          (json['status'] as List<dynamic>?)?.map((e) => e as String).toList(),
      totalPlayersAllowed: (json['totalPlayersAllowed'] as num?)?.toInt(),
      tournamentName: json['tournamentName'] as String?,
      registeredPlayersId: (json['registeredPlayersId'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      lobby: json['lobby'] as String?,
      liveLink: json['liveLink'] as String?,
    );

Map<String, dynamic> _$$TournamentImplToJson(_$TournamentImpl instance) =>
    <String, dynamic>{
      'created_at': instance.createdAt,
      'dateTime': _dateTimeToTimestamp(instance.dateTime),
      'uid': instance.uid,
      'entryFee': instance.entryFee,
      'gameType': instance.gameType,
      'gameOption': instance.gameOption,
      'last_updated_at': instance.lastUpdatedAt,
      'perKill': instance.perKill,
      'prizePool': instance.prizePool,
      'status': instance.status,
      'totalPlayersAllowed': instance.totalPlayersAllowed,
      'tournamentName': instance.tournamentName,
      'registeredPlayersId': instance.registeredPlayersId,
      'lobby': instance.lobby,
      'liveLink': instance.liveLink,
    };
