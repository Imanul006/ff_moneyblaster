// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tournament.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GameType _$GameTypeFromJson(Map<String, dynamic> json) {
  return _GameType.fromJson(json);
}

/// @nodoc
mixin _$GameType {
  @JsonKey(name: 'gameCamera')
  String? get gameCamera => throw _privateConstructorUsedError;
  @JsonKey(name: 'gameMap')
  String? get gameMap => throw _privateConstructorUsedError;
  @JsonKey(name: 'teamOption')
  String? get teamOption => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameTypeCopyWith<GameType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameTypeCopyWith<$Res> {
  factory $GameTypeCopyWith(GameType value, $Res Function(GameType) then) =
      _$GameTypeCopyWithImpl<$Res, GameType>;
  @useResult
  $Res call(
      {@JsonKey(name: 'gameCamera') String? gameCamera,
      @JsonKey(name: 'gameMap') String? gameMap,
      @JsonKey(name: 'teamOption') String? teamOption});
}

/// @nodoc
class _$GameTypeCopyWithImpl<$Res, $Val extends GameType>
    implements $GameTypeCopyWith<$Res> {
  _$GameTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameCamera = freezed,
    Object? gameMap = freezed,
    Object? teamOption = freezed,
  }) {
    return _then(_value.copyWith(
      gameCamera: freezed == gameCamera
          ? _value.gameCamera
          : gameCamera // ignore: cast_nullable_to_non_nullable
              as String?,
      gameMap: freezed == gameMap
          ? _value.gameMap
          : gameMap // ignore: cast_nullable_to_non_nullable
              as String?,
      teamOption: freezed == teamOption
          ? _value.teamOption
          : teamOption // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GameTypeImplCopyWith<$Res>
    implements $GameTypeCopyWith<$Res> {
  factory _$$GameTypeImplCopyWith(
          _$GameTypeImpl value, $Res Function(_$GameTypeImpl) then) =
      __$$GameTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'gameCamera') String? gameCamera,
      @JsonKey(name: 'gameMap') String? gameMap,
      @JsonKey(name: 'teamOption') String? teamOption});
}

/// @nodoc
class __$$GameTypeImplCopyWithImpl<$Res>
    extends _$GameTypeCopyWithImpl<$Res, _$GameTypeImpl>
    implements _$$GameTypeImplCopyWith<$Res> {
  __$$GameTypeImplCopyWithImpl(
      _$GameTypeImpl _value, $Res Function(_$GameTypeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameCamera = freezed,
    Object? gameMap = freezed,
    Object? teamOption = freezed,
  }) {
    return _then(_$GameTypeImpl(
      gameCamera: freezed == gameCamera
          ? _value.gameCamera
          : gameCamera // ignore: cast_nullable_to_non_nullable
              as String?,
      gameMap: freezed == gameMap
          ? _value.gameMap
          : gameMap // ignore: cast_nullable_to_non_nullable
              as String?,
      teamOption: freezed == teamOption
          ? _value.teamOption
          : teamOption // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GameTypeImpl implements _GameType {
  _$GameTypeImpl(
      {@JsonKey(name: 'gameCamera') this.gameCamera,
      @JsonKey(name: 'gameMap') this.gameMap,
      @JsonKey(name: 'teamOption') this.teamOption});

  factory _$GameTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameTypeImplFromJson(json);

  @override
  @JsonKey(name: 'gameCamera')
  final String? gameCamera;
  @override
  @JsonKey(name: 'gameMap')
  final String? gameMap;
  @override
  @JsonKey(name: 'teamOption')
  final String? teamOption;

  @override
  String toString() {
    return 'GameType(gameCamera: $gameCamera, gameMap: $gameMap, teamOption: $teamOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameTypeImpl &&
            (identical(other.gameCamera, gameCamera) ||
                other.gameCamera == gameCamera) &&
            (identical(other.gameMap, gameMap) || other.gameMap == gameMap) &&
            (identical(other.teamOption, teamOption) ||
                other.teamOption == teamOption));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, gameCamera, gameMap, teamOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GameTypeImplCopyWith<_$GameTypeImpl> get copyWith =>
      __$$GameTypeImplCopyWithImpl<_$GameTypeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GameTypeImplToJson(
      this,
    );
  }
}

abstract class _GameType implements GameType {
  factory _GameType(
      {@JsonKey(name: 'gameCamera') final String? gameCamera,
      @JsonKey(name: 'gameMap') final String? gameMap,
      @JsonKey(name: 'teamOption') final String? teamOption}) = _$GameTypeImpl;

  factory _GameType.fromJson(Map<String, dynamic> json) =
      _$GameTypeImpl.fromJson;

  @override
  @JsonKey(name: 'gameCamera')
  String? get gameCamera;
  @override
  @JsonKey(name: 'gameMap')
  String? get gameMap;
  @override
  @JsonKey(name: 'teamOption')
  String? get teamOption;
  @override
  @JsonKey(ignore: true)
  _$$GameTypeImplCopyWith<_$GameTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Tournament _$TournamentFromJson(Map<String, dynamic> json) {
  return _Tournament.fromJson(json);
}

/// @nodoc
mixin _$Tournament {
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'dateTime',
      fromJson: _dateTimeFromTimestamp,
      toJson: _dateTimeToTimestamp)
  DateTime? get dateTime => throw _privateConstructorUsedError;
  String? get uid => throw _privateConstructorUsedError;
  @JsonKey(name: 'entryFee')
  int? get entryFee => throw _privateConstructorUsedError;
  @JsonKey(name: 'gameType')
  GameType? get gameType => throw _privateConstructorUsedError;
  @JsonKey(name: 'gameOption')
  String? get gameOption => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_updated_at')
  String? get lastUpdatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'perKill')
  int? get perKill => throw _privateConstructorUsedError;
  @JsonKey(name: 'prizePool')
  List<int>? get prizePool => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  List<String>? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalPlayersAllowed')
  int? get totalPlayersAllowed => throw _privateConstructorUsedError;
  @JsonKey(name: 'tournamentName')
  String? get tournamentName => throw _privateConstructorUsedError;
  @JsonKey(name: 'registeredPlayersId')
  List<String> get registeredPlayersId => throw _privateConstructorUsedError;
  @JsonKey(name: 'lobby')
  String? get lobby => throw _privateConstructorUsedError;
  @JsonKey(name: 'liveLink')
  String? get liveLink => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TournamentCopyWith<Tournament> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TournamentCopyWith<$Res> {
  factory $TournamentCopyWith(
          Tournament value, $Res Function(Tournament) then) =
      _$TournamentCopyWithImpl<$Res, Tournament>;
  @useResult
  $Res call(
      {@JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(
          name: 'dateTime',
          fromJson: _dateTimeFromTimestamp,
          toJson: _dateTimeToTimestamp)
      DateTime? dateTime,
      String? uid,
      @JsonKey(name: 'entryFee') int? entryFee,
      @JsonKey(name: 'gameType') GameType? gameType,
      @JsonKey(name: 'gameOption') String? gameOption,
      @JsonKey(name: 'last_updated_at') String? lastUpdatedAt,
      @JsonKey(name: 'perKill') int? perKill,
      @JsonKey(name: 'prizePool') List<int>? prizePool,
      @JsonKey(name: 'status') List<String>? status,
      @JsonKey(name: 'totalPlayersAllowed') int? totalPlayersAllowed,
      @JsonKey(name: 'tournamentName') String? tournamentName,
      @JsonKey(name: 'registeredPlayersId') List<String> registeredPlayersId,
      @JsonKey(name: 'lobby') String? lobby,
      @JsonKey(name: 'liveLink') String? liveLink});

  $GameTypeCopyWith<$Res>? get gameType;
}

/// @nodoc
class _$TournamentCopyWithImpl<$Res, $Val extends Tournament>
    implements $TournamentCopyWith<$Res> {
  _$TournamentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? dateTime = freezed,
    Object? uid = freezed,
    Object? entryFee = freezed,
    Object? gameType = freezed,
    Object? gameOption = freezed,
    Object? lastUpdatedAt = freezed,
    Object? perKill = freezed,
    Object? prizePool = freezed,
    Object? status = freezed,
    Object? totalPlayersAllowed = freezed,
    Object? tournamentName = freezed,
    Object? registeredPlayersId = null,
    Object? lobby = freezed,
    Object? liveLink = freezed,
  }) {
    return _then(_value.copyWith(
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      dateTime: freezed == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      entryFee: freezed == entryFee
          ? _value.entryFee
          : entryFee // ignore: cast_nullable_to_non_nullable
              as int?,
      gameType: freezed == gameType
          ? _value.gameType
          : gameType // ignore: cast_nullable_to_non_nullable
              as GameType?,
      gameOption: freezed == gameOption
          ? _value.gameOption
          : gameOption // ignore: cast_nullable_to_non_nullable
              as String?,
      lastUpdatedAt: freezed == lastUpdatedAt
          ? _value.lastUpdatedAt
          : lastUpdatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      perKill: freezed == perKill
          ? _value.perKill
          : perKill // ignore: cast_nullable_to_non_nullable
              as int?,
      prizePool: freezed == prizePool
          ? _value.prizePool
          : prizePool // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      totalPlayersAllowed: freezed == totalPlayersAllowed
          ? _value.totalPlayersAllowed
          : totalPlayersAllowed // ignore: cast_nullable_to_non_nullable
              as int?,
      tournamentName: freezed == tournamentName
          ? _value.tournamentName
          : tournamentName // ignore: cast_nullable_to_non_nullable
              as String?,
      registeredPlayersId: null == registeredPlayersId
          ? _value.registeredPlayersId
          : registeredPlayersId // ignore: cast_nullable_to_non_nullable
              as List<String>,
      lobby: freezed == lobby
          ? _value.lobby
          : lobby // ignore: cast_nullable_to_non_nullable
              as String?,
      liveLink: freezed == liveLink
          ? _value.liveLink
          : liveLink // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GameTypeCopyWith<$Res>? get gameType {
    if (_value.gameType == null) {
      return null;
    }

    return $GameTypeCopyWith<$Res>(_value.gameType!, (value) {
      return _then(_value.copyWith(gameType: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TournamentImplCopyWith<$Res>
    implements $TournamentCopyWith<$Res> {
  factory _$$TournamentImplCopyWith(
          _$TournamentImpl value, $Res Function(_$TournamentImpl) then) =
      __$$TournamentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(
          name: 'dateTime',
          fromJson: _dateTimeFromTimestamp,
          toJson: _dateTimeToTimestamp)
      DateTime? dateTime,
      String? uid,
      @JsonKey(name: 'entryFee') int? entryFee,
      @JsonKey(name: 'gameType') GameType? gameType,
      @JsonKey(name: 'gameOption') String? gameOption,
      @JsonKey(name: 'last_updated_at') String? lastUpdatedAt,
      @JsonKey(name: 'perKill') int? perKill,
      @JsonKey(name: 'prizePool') List<int>? prizePool,
      @JsonKey(name: 'status') List<String>? status,
      @JsonKey(name: 'totalPlayersAllowed') int? totalPlayersAllowed,
      @JsonKey(name: 'tournamentName') String? tournamentName,
      @JsonKey(name: 'registeredPlayersId') List<String> registeredPlayersId,
      @JsonKey(name: 'lobby') String? lobby,
      @JsonKey(name: 'liveLink') String? liveLink});

  @override
  $GameTypeCopyWith<$Res>? get gameType;
}

/// @nodoc
class __$$TournamentImplCopyWithImpl<$Res>
    extends _$TournamentCopyWithImpl<$Res, _$TournamentImpl>
    implements _$$TournamentImplCopyWith<$Res> {
  __$$TournamentImplCopyWithImpl(
      _$TournamentImpl _value, $Res Function(_$TournamentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? dateTime = freezed,
    Object? uid = freezed,
    Object? entryFee = freezed,
    Object? gameType = freezed,
    Object? gameOption = freezed,
    Object? lastUpdatedAt = freezed,
    Object? perKill = freezed,
    Object? prizePool = freezed,
    Object? status = freezed,
    Object? totalPlayersAllowed = freezed,
    Object? tournamentName = freezed,
    Object? registeredPlayersId = null,
    Object? lobby = freezed,
    Object? liveLink = freezed,
  }) {
    return _then(_$TournamentImpl(
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      dateTime: freezed == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      entryFee: freezed == entryFee
          ? _value.entryFee
          : entryFee // ignore: cast_nullable_to_non_nullable
              as int?,
      gameType: freezed == gameType
          ? _value.gameType
          : gameType // ignore: cast_nullable_to_non_nullable
              as GameType?,
      gameOption: freezed == gameOption
          ? _value.gameOption
          : gameOption // ignore: cast_nullable_to_non_nullable
              as String?,
      lastUpdatedAt: freezed == lastUpdatedAt
          ? _value.lastUpdatedAt
          : lastUpdatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      perKill: freezed == perKill
          ? _value.perKill
          : perKill // ignore: cast_nullable_to_non_nullable
              as int?,
      prizePool: freezed == prizePool
          ? _value._prizePool
          : prizePool // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      status: freezed == status
          ? _value._status
          : status // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      totalPlayersAllowed: freezed == totalPlayersAllowed
          ? _value.totalPlayersAllowed
          : totalPlayersAllowed // ignore: cast_nullable_to_non_nullable
              as int?,
      tournamentName: freezed == tournamentName
          ? _value.tournamentName
          : tournamentName // ignore: cast_nullable_to_non_nullable
              as String?,
      registeredPlayersId: null == registeredPlayersId
          ? _value._registeredPlayersId
          : registeredPlayersId // ignore: cast_nullable_to_non_nullable
              as List<String>,
      lobby: freezed == lobby
          ? _value.lobby
          : lobby // ignore: cast_nullable_to_non_nullable
              as String?,
      liveLink: freezed == liveLink
          ? _value.liveLink
          : liveLink // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TournamentImpl implements _Tournament {
  _$TournamentImpl(
      {@JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(
          name: 'dateTime',
          fromJson: _dateTimeFromTimestamp,
          toJson: _dateTimeToTimestamp)
      this.dateTime,
      required this.uid,
      @JsonKey(name: 'entryFee') this.entryFee,
      @JsonKey(name: 'gameType') this.gameType,
      @JsonKey(name: 'gameOption') this.gameOption,
      @JsonKey(name: 'last_updated_at') this.lastUpdatedAt,
      @JsonKey(name: 'perKill') this.perKill,
      @JsonKey(name: 'prizePool') final List<int>? prizePool,
      @JsonKey(name: 'status') final List<String>? status,
      @JsonKey(name: 'totalPlayersAllowed') this.totalPlayersAllowed,
      @JsonKey(name: 'tournamentName') this.tournamentName,
      @JsonKey(name: 'registeredPlayersId')
      final List<String> registeredPlayersId = const [],
      @JsonKey(name: 'lobby') this.lobby,
      @JsonKey(name: 'liveLink') this.liveLink})
      : _prizePool = prizePool,
        _status = status,
        _registeredPlayersId = registeredPlayersId;

  factory _$TournamentImpl.fromJson(Map<String, dynamic> json) =>
      _$$TournamentImplFromJson(json);

  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(
      name: 'dateTime',
      fromJson: _dateTimeFromTimestamp,
      toJson: _dateTimeToTimestamp)
  final DateTime? dateTime;
  @override
  final String? uid;
  @override
  @JsonKey(name: 'entryFee')
  final int? entryFee;
  @override
  @JsonKey(name: 'gameType')
  final GameType? gameType;
  @override
  @JsonKey(name: 'gameOption')
  final String? gameOption;
  @override
  @JsonKey(name: 'last_updated_at')
  final String? lastUpdatedAt;
  @override
  @JsonKey(name: 'perKill')
  final int? perKill;
  final List<int>? _prizePool;
  @override
  @JsonKey(name: 'prizePool')
  List<int>? get prizePool {
    final value = _prizePool;
    if (value == null) return null;
    if (_prizePool is EqualUnmodifiableListView) return _prizePool;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _status;
  @override
  @JsonKey(name: 'status')
  List<String>? get status {
    final value = _status;
    if (value == null) return null;
    if (_status is EqualUnmodifiableListView) return _status;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'totalPlayersAllowed')
  final int? totalPlayersAllowed;
  @override
  @JsonKey(name: 'tournamentName')
  final String? tournamentName;
  final List<String> _registeredPlayersId;
  @override
  @JsonKey(name: 'registeredPlayersId')
  List<String> get registeredPlayersId {
    if (_registeredPlayersId is EqualUnmodifiableListView)
      return _registeredPlayersId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_registeredPlayersId);
  }

  @override
  @JsonKey(name: 'lobby')
  final String? lobby;
  @override
  @JsonKey(name: 'liveLink')
  final String? liveLink;

  @override
  String toString() {
    return 'Tournament(createdAt: $createdAt, dateTime: $dateTime, uid: $uid, entryFee: $entryFee, gameType: $gameType, gameOption: $gameOption, lastUpdatedAt: $lastUpdatedAt, perKill: $perKill, prizePool: $prizePool, status: $status, totalPlayersAllowed: $totalPlayersAllowed, tournamentName: $tournamentName, registeredPlayersId: $registeredPlayersId, lobby: $lobby, liveLink: $liveLink)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TournamentImpl &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.entryFee, entryFee) ||
                other.entryFee == entryFee) &&
            (identical(other.gameType, gameType) ||
                other.gameType == gameType) &&
            (identical(other.gameOption, gameOption) ||
                other.gameOption == gameOption) &&
            (identical(other.lastUpdatedAt, lastUpdatedAt) ||
                other.lastUpdatedAt == lastUpdatedAt) &&
            (identical(other.perKill, perKill) || other.perKill == perKill) &&
            const DeepCollectionEquality()
                .equals(other._prizePool, _prizePool) &&
            const DeepCollectionEquality().equals(other._status, _status) &&
            (identical(other.totalPlayersAllowed, totalPlayersAllowed) ||
                other.totalPlayersAllowed == totalPlayersAllowed) &&
            (identical(other.tournamentName, tournamentName) ||
                other.tournamentName == tournamentName) &&
            const DeepCollectionEquality()
                .equals(other._registeredPlayersId, _registeredPlayersId) &&
            (identical(other.lobby, lobby) || other.lobby == lobby) &&
            (identical(other.liveLink, liveLink) ||
                other.liveLink == liveLink));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      createdAt,
      dateTime,
      uid,
      entryFee,
      gameType,
      gameOption,
      lastUpdatedAt,
      perKill,
      const DeepCollectionEquality().hash(_prizePool),
      const DeepCollectionEquality().hash(_status),
      totalPlayersAllowed,
      tournamentName,
      const DeepCollectionEquality().hash(_registeredPlayersId),
      lobby,
      liveLink);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TournamentImplCopyWith<_$TournamentImpl> get copyWith =>
      __$$TournamentImplCopyWithImpl<_$TournamentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TournamentImplToJson(
      this,
    );
  }
}

abstract class _Tournament implements Tournament {
  factory _Tournament(
      {@JsonKey(name: 'created_at') final String? createdAt,
      @JsonKey(
          name: 'dateTime',
          fromJson: _dateTimeFromTimestamp,
          toJson: _dateTimeToTimestamp)
      final DateTime? dateTime,
      required final String? uid,
      @JsonKey(name: 'entryFee') final int? entryFee,
      @JsonKey(name: 'gameType') final GameType? gameType,
      @JsonKey(name: 'gameOption') final String? gameOption,
      @JsonKey(name: 'last_updated_at') final String? lastUpdatedAt,
      @JsonKey(name: 'perKill') final int? perKill,
      @JsonKey(name: 'prizePool') final List<int>? prizePool,
      @JsonKey(name: 'status') final List<String>? status,
      @JsonKey(name: 'totalPlayersAllowed') final int? totalPlayersAllowed,
      @JsonKey(name: 'tournamentName') final String? tournamentName,
      @JsonKey(name: 'registeredPlayersId')
      final List<String> registeredPlayersId,
      @JsonKey(name: 'lobby') final String? lobby,
      @JsonKey(name: 'liveLink') final String? liveLink}) = _$TournamentImpl;

  factory _Tournament.fromJson(Map<String, dynamic> json) =
      _$TournamentImpl.fromJson;

  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(
      name: 'dateTime',
      fromJson: _dateTimeFromTimestamp,
      toJson: _dateTimeToTimestamp)
  DateTime? get dateTime;
  @override
  String? get uid;
  @override
  @JsonKey(name: 'entryFee')
  int? get entryFee;
  @override
  @JsonKey(name: 'gameType')
  GameType? get gameType;
  @override
  @JsonKey(name: 'gameOption')
  String? get gameOption;
  @override
  @JsonKey(name: 'last_updated_at')
  String? get lastUpdatedAt;
  @override
  @JsonKey(name: 'perKill')
  int? get perKill;
  @override
  @JsonKey(name: 'prizePool')
  List<int>? get prizePool;
  @override
  @JsonKey(name: 'status')
  List<String>? get status;
  @override
  @JsonKey(name: 'totalPlayersAllowed')
  int? get totalPlayersAllowed;
  @override
  @JsonKey(name: 'tournamentName')
  String? get tournamentName;
  @override
  @JsonKey(name: 'registeredPlayersId')
  List<String> get registeredPlayersId;
  @override
  @JsonKey(name: 'lobby')
  String? get lobby;
  @override
  @JsonKey(name: 'liveLink')
  String? get liveLink;
  @override
  @JsonKey(ignore: true)
  _$$TournamentImplCopyWith<_$TournamentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
