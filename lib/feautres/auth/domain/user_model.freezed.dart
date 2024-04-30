// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  String get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get gameId => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  bool get isVerified => throw _privateConstructorUsedError;
  List<String> get tournamentIds => throw _privateConstructorUsedError;
  GameStats get gameStats => throw _privateConstructorUsedError;
  WalletModel get wallet => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {String id,
      String username,
      String gameId,
      String phoneNumber,
      bool isVerified,
      List<String> tournamentIds,
      GameStats gameStats,
      WalletModel wallet});

  $GameStatsCopyWith<$Res> get gameStats;
  $WalletModelCopyWith<$Res> get wallet;
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? gameId = null,
    Object? phoneNumber = null,
    Object? isVerified = null,
    Object? tournamentIds = null,
    Object? gameStats = null,
    Object? wallet = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      gameId: null == gameId
          ? _value.gameId
          : gameId // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      tournamentIds: null == tournamentIds
          ? _value.tournamentIds
          : tournamentIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      gameStats: null == gameStats
          ? _value.gameStats
          : gameStats // ignore: cast_nullable_to_non_nullable
              as GameStats,
      wallet: null == wallet
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as WalletModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GameStatsCopyWith<$Res> get gameStats {
    return $GameStatsCopyWith<$Res>(_value.gameStats, (value) {
      return _then(_value.copyWith(gameStats: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WalletModelCopyWith<$Res> get wallet {
    return $WalletModelCopyWith<$Res>(_value.wallet, (value) {
      return _then(_value.copyWith(wallet: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String username,
      String gameId,
      String phoneNumber,
      bool isVerified,
      List<String> tournamentIds,
      GameStats gameStats,
      WalletModel wallet});

  @override
  $GameStatsCopyWith<$Res> get gameStats;
  @override
  $WalletModelCopyWith<$Res> get wallet;
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? gameId = null,
    Object? phoneNumber = null,
    Object? isVerified = null,
    Object? tournamentIds = null,
    Object? gameStats = null,
    Object? wallet = null,
  }) {
    return _then(_$UserModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      gameId: null == gameId
          ? _value.gameId
          : gameId // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      tournamentIds: null == tournamentIds
          ? _value._tournamentIds
          : tournamentIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      gameStats: null == gameStats
          ? _value.gameStats
          : gameStats // ignore: cast_nullable_to_non_nullable
              as GameStats,
      wallet: null == wallet
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as WalletModel,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$UserModelImpl with DiagnosticableTreeMixin implements _UserModel {
  const _$UserModelImpl(
      {required this.id,
      required this.username,
      required this.gameId,
      required this.phoneNumber,
      this.isVerified = false,
      final List<String> tournamentIds = const [],
      required this.gameStats,
      required this.wallet})
      : _tournamentIds = tournamentIds;

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  final String id;
  @override
  final String username;
  @override
  final String gameId;
  @override
  final String phoneNumber;
  @override
  @JsonKey()
  final bool isVerified;
  final List<String> _tournamentIds;
  @override
  @JsonKey()
  List<String> get tournamentIds {
    if (_tournamentIds is EqualUnmodifiableListView) return _tournamentIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tournamentIds);
  }

  @override
  final GameStats gameStats;
  @override
  final WalletModel wallet;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserModel(id: $id, username: $username, gameId: $gameId, phoneNumber: $phoneNumber, isVerified: $isVerified, tournamentIds: $tournamentIds, gameStats: $gameStats, wallet: $wallet)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('gameId', gameId))
      ..add(DiagnosticsProperty('phoneNumber', phoneNumber))
      ..add(DiagnosticsProperty('isVerified', isVerified))
      ..add(DiagnosticsProperty('tournamentIds', tournamentIds))
      ..add(DiagnosticsProperty('gameStats', gameStats))
      ..add(DiagnosticsProperty('wallet', wallet));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.gameId, gameId) || other.gameId == gameId) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified) &&
            const DeepCollectionEquality()
                .equals(other._tournamentIds, _tournamentIds) &&
            (identical(other.gameStats, gameStats) ||
                other.gameStats == gameStats) &&
            (identical(other.wallet, wallet) || other.wallet == wallet));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      username,
      gameId,
      phoneNumber,
      isVerified,
      const DeepCollectionEquality().hash(_tournamentIds),
      gameStats,
      wallet);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel(
      {required final String id,
      required final String username,
      required final String gameId,
      required final String phoneNumber,
      final bool isVerified,
      final List<String> tournamentIds,
      required final GameStats gameStats,
      required final WalletModel wallet}) = _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  String get id;
  @override
  String get username;
  @override
  String get gameId;
  @override
  String get phoneNumber;
  @override
  bool get isVerified;
  @override
  List<String> get tournamentIds;
  @override
  GameStats get gameStats;
  @override
  WalletModel get wallet;
  @override
  @JsonKey(ignore: true)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GameStats _$GameStatsFromJson(Map<String, dynamic> json) {
  return _GameStats.fromJson(json);
}

/// @nodoc
mixin _$GameStats {
  String get game => throw _privateConstructorUsedError;
  int get totalGames => throw _privateConstructorUsedError;
  int get totalKills => throw _privateConstructorUsedError;
  int get totalWins => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameStatsCopyWith<GameStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameStatsCopyWith<$Res> {
  factory $GameStatsCopyWith(GameStats value, $Res Function(GameStats) then) =
      _$GameStatsCopyWithImpl<$Res, GameStats>;
  @useResult
  $Res call({String game, int totalGames, int totalKills, int totalWins});
}

/// @nodoc
class _$GameStatsCopyWithImpl<$Res, $Val extends GameStats>
    implements $GameStatsCopyWith<$Res> {
  _$GameStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? game = null,
    Object? totalGames = null,
    Object? totalKills = null,
    Object? totalWins = null,
  }) {
    return _then(_value.copyWith(
      game: null == game
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as String,
      totalGames: null == totalGames
          ? _value.totalGames
          : totalGames // ignore: cast_nullable_to_non_nullable
              as int,
      totalKills: null == totalKills
          ? _value.totalKills
          : totalKills // ignore: cast_nullable_to_non_nullable
              as int,
      totalWins: null == totalWins
          ? _value.totalWins
          : totalWins // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GameStatsImplCopyWith<$Res>
    implements $GameStatsCopyWith<$Res> {
  factory _$$GameStatsImplCopyWith(
          _$GameStatsImpl value, $Res Function(_$GameStatsImpl) then) =
      __$$GameStatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String game, int totalGames, int totalKills, int totalWins});
}

/// @nodoc
class __$$GameStatsImplCopyWithImpl<$Res>
    extends _$GameStatsCopyWithImpl<$Res, _$GameStatsImpl>
    implements _$$GameStatsImplCopyWith<$Res> {
  __$$GameStatsImplCopyWithImpl(
      _$GameStatsImpl _value, $Res Function(_$GameStatsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? game = null,
    Object? totalGames = null,
    Object? totalKills = null,
    Object? totalWins = null,
  }) {
    return _then(_$GameStatsImpl(
      game: null == game
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as String,
      totalGames: null == totalGames
          ? _value.totalGames
          : totalGames // ignore: cast_nullable_to_non_nullable
              as int,
      totalKills: null == totalKills
          ? _value.totalKills
          : totalKills // ignore: cast_nullable_to_non_nullable
              as int,
      totalWins: null == totalWins
          ? _value.totalWins
          : totalWins // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$GameStatsImpl with DiagnosticableTreeMixin implements _GameStats {
  const _$GameStatsImpl(
      {required this.game,
      this.totalGames = 0,
      this.totalKills = 0,
      this.totalWins = 0});

  factory _$GameStatsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameStatsImplFromJson(json);

  @override
  final String game;
  @override
  @JsonKey()
  final int totalGames;
  @override
  @JsonKey()
  final int totalKills;
  @override
  @JsonKey()
  final int totalWins;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GameStats(game: $game, totalGames: $totalGames, totalKills: $totalKills, totalWins: $totalWins)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GameStats'))
      ..add(DiagnosticsProperty('game', game))
      ..add(DiagnosticsProperty('totalGames', totalGames))
      ..add(DiagnosticsProperty('totalKills', totalKills))
      ..add(DiagnosticsProperty('totalWins', totalWins));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameStatsImpl &&
            (identical(other.game, game) || other.game == game) &&
            (identical(other.totalGames, totalGames) ||
                other.totalGames == totalGames) &&
            (identical(other.totalKills, totalKills) ||
                other.totalKills == totalKills) &&
            (identical(other.totalWins, totalWins) ||
                other.totalWins == totalWins));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, game, totalGames, totalKills, totalWins);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GameStatsImplCopyWith<_$GameStatsImpl> get copyWith =>
      __$$GameStatsImplCopyWithImpl<_$GameStatsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GameStatsImplToJson(
      this,
    );
  }
}

abstract class _GameStats implements GameStats {
  const factory _GameStats(
      {required final String game,
      final int totalGames,
      final int totalKills,
      final int totalWins}) = _$GameStatsImpl;

  factory _GameStats.fromJson(Map<String, dynamic> json) =
      _$GameStatsImpl.fromJson;

  @override
  String get game;
  @override
  int get totalGames;
  @override
  int get totalKills;
  @override
  int get totalWins;
  @override
  @JsonKey(ignore: true)
  _$$GameStatsImplCopyWith<_$GameStatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WalletModel _$WalletModelFromJson(Map<String, dynamic> json) {
  return _WalletModel.fromJson(json);
}

/// @nodoc
mixin _$WalletModel {
  int get balance => throw _privateConstructorUsedError;
  List<TransactionHistory> get history => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WalletModelCopyWith<WalletModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletModelCopyWith<$Res> {
  factory $WalletModelCopyWith(
          WalletModel value, $Res Function(WalletModel) then) =
      _$WalletModelCopyWithImpl<$Res, WalletModel>;
  @useResult
  $Res call({int balance, List<TransactionHistory> history});
}

/// @nodoc
class _$WalletModelCopyWithImpl<$Res, $Val extends WalletModel>
    implements $WalletModelCopyWith<$Res> {
  _$WalletModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balance = null,
    Object? history = null,
  }) {
    return _then(_value.copyWith(
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as int,
      history: null == history
          ? _value.history
          : history // ignore: cast_nullable_to_non_nullable
              as List<TransactionHistory>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WalletModelImplCopyWith<$Res>
    implements $WalletModelCopyWith<$Res> {
  factory _$$WalletModelImplCopyWith(
          _$WalletModelImpl value, $Res Function(_$WalletModelImpl) then) =
      __$$WalletModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int balance, List<TransactionHistory> history});
}

/// @nodoc
class __$$WalletModelImplCopyWithImpl<$Res>
    extends _$WalletModelCopyWithImpl<$Res, _$WalletModelImpl>
    implements _$$WalletModelImplCopyWith<$Res> {
  __$$WalletModelImplCopyWithImpl(
      _$WalletModelImpl _value, $Res Function(_$WalletModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balance = null,
    Object? history = null,
  }) {
    return _then(_$WalletModelImpl(
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as int,
      history: null == history
          ? _value._history
          : history // ignore: cast_nullable_to_non_nullable
              as List<TransactionHistory>,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$WalletModelImpl with DiagnosticableTreeMixin implements _WalletModel {
  const _$WalletModelImpl(
      {this.balance = 0, final List<TransactionHistory> history = const []})
      : _history = history;

  factory _$WalletModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WalletModelImplFromJson(json);

  @override
  @JsonKey()
  final int balance;
  final List<TransactionHistory> _history;
  @override
  @JsonKey()
  List<TransactionHistory> get history {
    if (_history is EqualUnmodifiableListView) return _history;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_history);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WalletModel(balance: $balance, history: $history)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WalletModel'))
      ..add(DiagnosticsProperty('balance', balance))
      ..add(DiagnosticsProperty('history', history));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletModelImpl &&
            (identical(other.balance, balance) || other.balance == balance) &&
            const DeepCollectionEquality().equals(other._history, _history));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, balance, const DeepCollectionEquality().hash(_history));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletModelImplCopyWith<_$WalletModelImpl> get copyWith =>
      __$$WalletModelImplCopyWithImpl<_$WalletModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WalletModelImplToJson(
      this,
    );
  }
}

abstract class _WalletModel implements WalletModel {
  const factory _WalletModel(
      {final int balance,
      final List<TransactionHistory> history}) = _$WalletModelImpl;

  factory _WalletModel.fromJson(Map<String, dynamic> json) =
      _$WalletModelImpl.fromJson;

  @override
  int get balance;
  @override
  List<TransactionHistory> get history;
  @override
  @JsonKey(ignore: true)
  _$$WalletModelImplCopyWith<_$WalletModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TransactionHistory _$TransactionHistoryFromJson(Map<String, dynamic> json) {
  return _TransactionHistory.fromJson(json);
}

/// @nodoc
mixin _$TransactionHistory {
  @JsonKey(fromJson: _dateTimeFromTimestamp, toJson: _dateTimeToTimestamp)
  DateTime? get datetime => throw _privateConstructorUsedError;
  int get transaction => throw _privateConstructorUsedError;
  String get transactionStatus => throw _privateConstructorUsedError;
  String get transactionType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionHistoryCopyWith<TransactionHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionHistoryCopyWith<$Res> {
  factory $TransactionHistoryCopyWith(
          TransactionHistory value, $Res Function(TransactionHistory) then) =
      _$TransactionHistoryCopyWithImpl<$Res, TransactionHistory>;
  @useResult
  $Res call(
      {@JsonKey(fromJson: _dateTimeFromTimestamp, toJson: _dateTimeToTimestamp)
      DateTime? datetime,
      int transaction,
      String transactionStatus,
      String transactionType});
}

/// @nodoc
class _$TransactionHistoryCopyWithImpl<$Res, $Val extends TransactionHistory>
    implements $TransactionHistoryCopyWith<$Res> {
  _$TransactionHistoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? datetime = freezed,
    Object? transaction = null,
    Object? transactionStatus = null,
    Object? transactionType = null,
  }) {
    return _then(_value.copyWith(
      datetime: freezed == datetime
          ? _value.datetime
          : datetime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      transaction: null == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as int,
      transactionStatus: null == transactionStatus
          ? _value.transactionStatus
          : transactionStatus // ignore: cast_nullable_to_non_nullable
              as String,
      transactionType: null == transactionType
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransactionHistoryImplCopyWith<$Res>
    implements $TransactionHistoryCopyWith<$Res> {
  factory _$$TransactionHistoryImplCopyWith(_$TransactionHistoryImpl value,
          $Res Function(_$TransactionHistoryImpl) then) =
      __$$TransactionHistoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(fromJson: _dateTimeFromTimestamp, toJson: _dateTimeToTimestamp)
      DateTime? datetime,
      int transaction,
      String transactionStatus,
      String transactionType});
}

/// @nodoc
class __$$TransactionHistoryImplCopyWithImpl<$Res>
    extends _$TransactionHistoryCopyWithImpl<$Res, _$TransactionHistoryImpl>
    implements _$$TransactionHistoryImplCopyWith<$Res> {
  __$$TransactionHistoryImplCopyWithImpl(_$TransactionHistoryImpl _value,
      $Res Function(_$TransactionHistoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? datetime = freezed,
    Object? transaction = null,
    Object? transactionStatus = null,
    Object? transactionType = null,
  }) {
    return _then(_$TransactionHistoryImpl(
      datetime: freezed == datetime
          ? _value.datetime
          : datetime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      transaction: null == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as int,
      transactionStatus: null == transactionStatus
          ? _value.transactionStatus
          : transactionStatus // ignore: cast_nullable_to_non_nullable
              as String,
      transactionType: null == transactionType
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$TransactionHistoryImpl
    with DiagnosticableTreeMixin
    implements _TransactionHistory {
  const _$TransactionHistoryImpl(
      {@JsonKey(fromJson: _dateTimeFromTimestamp, toJson: _dateTimeToTimestamp)
      this.datetime,
      this.transaction = 0,
      this.transactionStatus = '',
      this.transactionType = ''});

  factory _$TransactionHistoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionHistoryImplFromJson(json);

  @override
  @JsonKey(fromJson: _dateTimeFromTimestamp, toJson: _dateTimeToTimestamp)
  final DateTime? datetime;
  @override
  @JsonKey()
  final int transaction;
  @override
  @JsonKey()
  final String transactionStatus;
  @override
  @JsonKey()
  final String transactionType;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TransactionHistory(datetime: $datetime, transaction: $transaction, transactionStatus: $transactionStatus, transactionType: $transactionType)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TransactionHistory'))
      ..add(DiagnosticsProperty('datetime', datetime))
      ..add(DiagnosticsProperty('transaction', transaction))
      ..add(DiagnosticsProperty('transactionStatus', transactionStatus))
      ..add(DiagnosticsProperty('transactionType', transactionType));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionHistoryImpl &&
            (identical(other.datetime, datetime) ||
                other.datetime == datetime) &&
            (identical(other.transaction, transaction) ||
                other.transaction == transaction) &&
            (identical(other.transactionStatus, transactionStatus) ||
                other.transactionStatus == transactionStatus) &&
            (identical(other.transactionType, transactionType) ||
                other.transactionType == transactionType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, datetime, transaction, transactionStatus, transactionType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionHistoryImplCopyWith<_$TransactionHistoryImpl> get copyWith =>
      __$$TransactionHistoryImplCopyWithImpl<_$TransactionHistoryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionHistoryImplToJson(
      this,
    );
  }
}

abstract class _TransactionHistory implements TransactionHistory {
  const factory _TransactionHistory(
      {@JsonKey(fromJson: _dateTimeFromTimestamp, toJson: _dateTimeToTimestamp)
      final DateTime? datetime,
      final int transaction,
      final String transactionStatus,
      final String transactionType}) = _$TransactionHistoryImpl;

  factory _TransactionHistory.fromJson(Map<String, dynamic> json) =
      _$TransactionHistoryImpl.fromJson;

  @override
  @JsonKey(fromJson: _dateTimeFromTimestamp, toJson: _dateTimeToTimestamp)
  DateTime? get datetime;
  @override
  int get transaction;
  @override
  String get transactionStatus;
  @override
  String get transactionType;
  @override
  @JsonKey(ignore: true)
  _$$TransactionHistoryImplCopyWith<_$TransactionHistoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
