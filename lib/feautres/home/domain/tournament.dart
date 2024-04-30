// ignore_for_file: invalid_annotation_target

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tournament.freezed.dart';
part 'tournament.g.dart';

@freezed
class GameType with _$GameType {
  factory GameType({
    @JsonKey(name: 'gameCamera') String? gameCamera,
    @JsonKey(name: 'gameMap') String? gameMap,
    @JsonKey(name: 'teamOption') String? teamOption,
  }) = _GameType;

  factory GameType.fromJson(Map<String, dynamic> json) =>
      _$GameTypeFromJson(json);
}

@freezed
class Tournament with _$Tournament {
  factory Tournament({
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(
        name: 'dateTime',
        fromJson: _dateTimeFromTimestamp,
        toJson: _dateTimeToTimestamp)
    DateTime? dateTime,
    required String? uid,
    @JsonKey(name: 'entryFee') int? entryFee,
    @JsonKey(name: 'gameType') GameType? gameType,
    @JsonKey(name: 'gameOption') String? gameOption,
    @JsonKey(name: 'last_updated_at') String? lastUpdatedAt,
    @JsonKey(name: 'perKill') int? perKill,
    @JsonKey(name: 'prizePool') List<int>? prizePool,
    @JsonKey(name: 'status') List<String>? status,
    @JsonKey(name: 'totalPlayersAllowed') int? totalPlayersAllowed,
    @JsonKey(name: 'tournamentName') String? tournamentName,
    @Default([])
    @JsonKey(name: 'registeredPlayersId')
    List<String> registeredPlayersId,
    @JsonKey(name: 'lobby') String? lobby,
    @JsonKey(name: 'liveLink') String? liveLink,
  }) = _Tournament;

  factory Tournament.fromJson(Map<String, dynamic> json) =>
      _$TournamentFromJson(json);
}

DateTime? _dateTimeFromTimestamp(Timestamp? timestamp) {
  return timestamp?.toDate();
}

Timestamp? _dateTimeToTimestamp(DateTime? dateTime) {
  return dateTime != null ? Timestamp.fromDate(dateTime) : null;
}
