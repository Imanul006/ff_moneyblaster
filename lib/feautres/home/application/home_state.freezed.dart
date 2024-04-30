// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState {
  bool get isLoading => throw _privateConstructorUsedError;
  GameState get selectedHomeTab => throw _privateConstructorUsedError;
  List<Tournament> get tournaments => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  Tournament? get selectedTournament => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {bool isLoading,
      GameState selectedHomeTab,
      List<Tournament> tournaments,
      String errorMessage,
      Tournament? selectedTournament});

  $TournamentCopyWith<$Res>? get selectedTournament;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? selectedHomeTab = null,
    Object? tournaments = null,
    Object? errorMessage = null,
    Object? selectedTournament = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedHomeTab: null == selectedHomeTab
          ? _value.selectedHomeTab
          : selectedHomeTab // ignore: cast_nullable_to_non_nullable
              as GameState,
      tournaments: null == tournaments
          ? _value.tournaments
          : tournaments // ignore: cast_nullable_to_non_nullable
              as List<Tournament>,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      selectedTournament: freezed == selectedTournament
          ? _value.selectedTournament
          : selectedTournament // ignore: cast_nullable_to_non_nullable
              as Tournament?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TournamentCopyWith<$Res>? get selectedTournament {
    if (_value.selectedTournament == null) {
      return null;
    }

    return $TournamentCopyWith<$Res>(_value.selectedTournament!, (value) {
      return _then(_value.copyWith(selectedTournament: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      GameState selectedHomeTab,
      List<Tournament> tournaments,
      String errorMessage,
      Tournament? selectedTournament});

  @override
  $TournamentCopyWith<$Res>? get selectedTournament;
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? selectedHomeTab = null,
    Object? tournaments = null,
    Object? errorMessage = null,
    Object? selectedTournament = freezed,
  }) {
    return _then(_$HomeStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedHomeTab: null == selectedHomeTab
          ? _value.selectedHomeTab
          : selectedHomeTab // ignore: cast_nullable_to_non_nullable
              as GameState,
      tournaments: null == tournaments
          ? _value._tournaments
          : tournaments // ignore: cast_nullable_to_non_nullable
              as List<Tournament>,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      selectedTournament: freezed == selectedTournament
          ? _value.selectedTournament
          : selectedTournament // ignore: cast_nullable_to_non_nullable
              as Tournament?,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl extends _HomeState {
  const _$HomeStateImpl(
      {this.isLoading = false,
      this.selectedHomeTab = GameState.ongoing,
      final List<Tournament> tournaments = const [],
      this.errorMessage = '',
      this.selectedTournament})
      : _tournaments = tournaments,
        super._();

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final GameState selectedHomeTab;
  final List<Tournament> _tournaments;
  @override
  @JsonKey()
  List<Tournament> get tournaments {
    if (_tournaments is EqualUnmodifiableListView) return _tournaments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tournaments);
  }

  @override
  @JsonKey()
  final String errorMessage;
  @override
  final Tournament? selectedTournament;

  @override
  String toString() {
    return 'HomeState(isLoading: $isLoading, selectedHomeTab: $selectedHomeTab, tournaments: $tournaments, errorMessage: $errorMessage, selectedTournament: $selectedTournament)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.selectedHomeTab, selectedHomeTab) ||
                other.selectedHomeTab == selectedHomeTab) &&
            const DeepCollectionEquality()
                .equals(other._tournaments, _tournaments) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.selectedTournament, selectedTournament) ||
                other.selectedTournament == selectedTournament));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      selectedHomeTab,
      const DeepCollectionEquality().hash(_tournaments),
      errorMessage,
      selectedTournament);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState extends HomeState {
  const factory _HomeState(
      {final bool isLoading,
      final GameState selectedHomeTab,
      final List<Tournament> tournaments,
      final String errorMessage,
      final Tournament? selectedTournament}) = _$HomeStateImpl;
  const _HomeState._() : super._();

  @override
  bool get isLoading;
  @override
  GameState get selectedHomeTab;
  @override
  List<Tournament> get tournaments;
  @override
  String get errorMessage;
  @override
  Tournament? get selectedTournament;
  @override
  @JsonKey(ignore: true)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
