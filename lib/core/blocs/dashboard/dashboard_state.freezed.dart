// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dashboard_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DashboardStateTearOff {
  const _$DashboardStateTearOff();

  _DashboardState call(
      {int vinylCount = 0, int acousticsCount = 0, int accessoriesCount = 0}) {
    return _DashboardState(
      vinylCount: vinylCount,
      acousticsCount: acousticsCount,
      accessoriesCount: accessoriesCount,
    );
  }
}

/// @nodoc
const $DashboardState = _$DashboardStateTearOff();

/// @nodoc
mixin _$DashboardState {
  int get vinylCount => throw _privateConstructorUsedError;
  int get acousticsCount => throw _privateConstructorUsedError;
  int get accessoriesCount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DashboardStateCopyWith<DashboardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardStateCopyWith<$Res> {
  factory $DashboardStateCopyWith(
          DashboardState value, $Res Function(DashboardState) then) =
      _$DashboardStateCopyWithImpl<$Res>;
  $Res call({int vinylCount, int acousticsCount, int accessoriesCount});
}

/// @nodoc
class _$DashboardStateCopyWithImpl<$Res>
    implements $DashboardStateCopyWith<$Res> {
  _$DashboardStateCopyWithImpl(this._value, this._then);

  final DashboardState _value;
  // ignore: unused_field
  final $Res Function(DashboardState) _then;

  @override
  $Res call({
    Object? vinylCount = freezed,
    Object? acousticsCount = freezed,
    Object? accessoriesCount = freezed,
  }) {
    return _then(_value.copyWith(
      vinylCount: vinylCount == freezed
          ? _value.vinylCount
          : vinylCount // ignore: cast_nullable_to_non_nullable
              as int,
      acousticsCount: acousticsCount == freezed
          ? _value.acousticsCount
          : acousticsCount // ignore: cast_nullable_to_non_nullable
              as int,
      accessoriesCount: accessoriesCount == freezed
          ? _value.accessoriesCount
          : accessoriesCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$DashboardStateCopyWith<$Res>
    implements $DashboardStateCopyWith<$Res> {
  factory _$DashboardStateCopyWith(
          _DashboardState value, $Res Function(_DashboardState) then) =
      __$DashboardStateCopyWithImpl<$Res>;
  @override
  $Res call({int vinylCount, int acousticsCount, int accessoriesCount});
}

/// @nodoc
class __$DashboardStateCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res>
    implements _$DashboardStateCopyWith<$Res> {
  __$DashboardStateCopyWithImpl(
      _DashboardState _value, $Res Function(_DashboardState) _then)
      : super(_value, (v) => _then(v as _DashboardState));

  @override
  _DashboardState get _value => super._value as _DashboardState;

  @override
  $Res call({
    Object? vinylCount = freezed,
    Object? acousticsCount = freezed,
    Object? accessoriesCount = freezed,
  }) {
    return _then(_DashboardState(
      vinylCount: vinylCount == freezed
          ? _value.vinylCount
          : vinylCount // ignore: cast_nullable_to_non_nullable
              as int,
      acousticsCount: acousticsCount == freezed
          ? _value.acousticsCount
          : acousticsCount // ignore: cast_nullable_to_non_nullable
              as int,
      accessoriesCount: accessoriesCount == freezed
          ? _value.accessoriesCount
          : accessoriesCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_DashboardState implements _DashboardState {
  const _$_DashboardState(
      {this.vinylCount = 0,
      this.acousticsCount = 0,
      this.accessoriesCount = 0});

  @JsonKey()
  @override
  final int vinylCount;
  @JsonKey()
  @override
  final int acousticsCount;
  @JsonKey()
  @override
  final int accessoriesCount;

  @override
  String toString() {
    return 'DashboardState(vinylCount: $vinylCount, acousticsCount: $acousticsCount, accessoriesCount: $accessoriesCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DashboardState &&
            const DeepCollectionEquality()
                .equals(other.vinylCount, vinylCount) &&
            const DeepCollectionEquality()
                .equals(other.acousticsCount, acousticsCount) &&
            const DeepCollectionEquality()
                .equals(other.accessoriesCount, accessoriesCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(vinylCount),
      const DeepCollectionEquality().hash(acousticsCount),
      const DeepCollectionEquality().hash(accessoriesCount));

  @JsonKey(ignore: true)
  @override
  _$DashboardStateCopyWith<_DashboardState> get copyWith =>
      __$DashboardStateCopyWithImpl<_DashboardState>(this, _$identity);
}

abstract class _DashboardState implements DashboardState {
  const factory _DashboardState(
      {int vinylCount,
      int acousticsCount,
      int accessoriesCount}) = _$_DashboardState;

  @override
  int get vinylCount;
  @override
  int get acousticsCount;
  @override
  int get accessoriesCount;
  @override
  @JsonKey(ignore: true)
  _$DashboardStateCopyWith<_DashboardState> get copyWith =>
      throw _privateConstructorUsedError;
}
