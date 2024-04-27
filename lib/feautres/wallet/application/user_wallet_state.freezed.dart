// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_wallet_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserWalletState {
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserWalletStateCopyWith<UserWalletState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserWalletStateCopyWith<$Res> {
  factory $UserWalletStateCopyWith(
          UserWalletState value, $Res Function(UserWalletState) then) =
      _$UserWalletStateCopyWithImpl<$Res, UserWalletState>;
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class _$UserWalletStateCopyWithImpl<$Res, $Val extends UserWalletState>
    implements $UserWalletStateCopyWith<$Res> {
  _$UserWalletStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserWalletStateImplCopyWith<$Res>
    implements $UserWalletStateCopyWith<$Res> {
  factory _$$UserWalletStateImplCopyWith(_$UserWalletStateImpl value,
          $Res Function(_$UserWalletStateImpl) then) =
      __$$UserWalletStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class __$$UserWalletStateImplCopyWithImpl<$Res>
    extends _$UserWalletStateCopyWithImpl<$Res, _$UserWalletStateImpl>
    implements _$$UserWalletStateImplCopyWith<$Res> {
  __$$UserWalletStateImplCopyWithImpl(
      _$UserWalletStateImpl _value, $Res Function(_$UserWalletStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_$UserWalletStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$UserWalletStateImpl extends _UserWalletState {
  const _$UserWalletStateImpl({this.isLoading = false}) : super._();

  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'UserWalletState(isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserWalletStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserWalletStateImplCopyWith<_$UserWalletStateImpl> get copyWith =>
      __$$UserWalletStateImplCopyWithImpl<_$UserWalletStateImpl>(
          this, _$identity);
}

abstract class _UserWalletState extends UserWalletState {
  const factory _UserWalletState({final bool isLoading}) =
      _$UserWalletStateImpl;
  const _UserWalletState._() : super._();

  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$UserWalletStateImplCopyWith<_$UserWalletStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
