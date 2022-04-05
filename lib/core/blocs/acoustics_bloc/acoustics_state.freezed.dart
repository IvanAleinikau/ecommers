// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'acoustics_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AcousticsStateTearOff {
  const _$AcousticsStateTearOff();

  _AcousticsState call(
      {bool isLoading = false,
      List<Acoustics> acousticsList = const [],
      bool acousticsCreated = false}) {
    return _AcousticsState(
      isLoading: isLoading,
      acousticsList: acousticsList,
      acousticsCreated: acousticsCreated,
    );
  }
}

/// @nodoc
const $AcousticsState = _$AcousticsStateTearOff();

/// @nodoc
mixin _$AcousticsState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Acoustics> get acousticsList => throw _privateConstructorUsedError;
  bool get acousticsCreated => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AcousticsStateCopyWith<AcousticsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AcousticsStateCopyWith<$Res> {
  factory $AcousticsStateCopyWith(
          AcousticsState value, $Res Function(AcousticsState) then) =
      _$AcousticsStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading, List<Acoustics> acousticsList, bool acousticsCreated});
}

/// @nodoc
class _$AcousticsStateCopyWithImpl<$Res>
    implements $AcousticsStateCopyWith<$Res> {
  _$AcousticsStateCopyWithImpl(this._value, this._then);

  final AcousticsState _value;
  // ignore: unused_field
  final $Res Function(AcousticsState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? acousticsList = freezed,
    Object? acousticsCreated = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      acousticsList: acousticsList == freezed
          ? _value.acousticsList
          : acousticsList // ignore: cast_nullable_to_non_nullable
              as List<Acoustics>,
      acousticsCreated: acousticsCreated == freezed
          ? _value.acousticsCreated
          : acousticsCreated // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$AcousticsStateCopyWith<$Res>
    implements $AcousticsStateCopyWith<$Res> {
  factory _$AcousticsStateCopyWith(
          _AcousticsState value, $Res Function(_AcousticsState) then) =
      __$AcousticsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading, List<Acoustics> acousticsList, bool acousticsCreated});
}

/// @nodoc
class __$AcousticsStateCopyWithImpl<$Res>
    extends _$AcousticsStateCopyWithImpl<$Res>
    implements _$AcousticsStateCopyWith<$Res> {
  __$AcousticsStateCopyWithImpl(
      _AcousticsState _value, $Res Function(_AcousticsState) _then)
      : super(_value, (v) => _then(v as _AcousticsState));

  @override
  _AcousticsState get _value => super._value as _AcousticsState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? acousticsList = freezed,
    Object? acousticsCreated = freezed,
  }) {
    return _then(_AcousticsState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      acousticsList: acousticsList == freezed
          ? _value.acousticsList
          : acousticsList // ignore: cast_nullable_to_non_nullable
              as List<Acoustics>,
      acousticsCreated: acousticsCreated == freezed
          ? _value.acousticsCreated
          : acousticsCreated // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AcousticsState implements _AcousticsState {
  const _$_AcousticsState(
      {this.isLoading = false,
      this.acousticsList = const [],
      this.acousticsCreated = false});

  @JsonKey()
  @override
  final bool isLoading;
  @JsonKey()
  @override
  final List<Acoustics> acousticsList;
  @JsonKey()
  @override
  final bool acousticsCreated;

  @override
  String toString() {
    return 'AcousticsState(isLoading: $isLoading, acousticsList: $acousticsList, acousticsCreated: $acousticsCreated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AcousticsState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.acousticsList, acousticsList) &&
            const DeepCollectionEquality()
                .equals(other.acousticsCreated, acousticsCreated));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(acousticsList),
      const DeepCollectionEquality().hash(acousticsCreated));

  @JsonKey(ignore: true)
  @override
  _$AcousticsStateCopyWith<_AcousticsState> get copyWith =>
      __$AcousticsStateCopyWithImpl<_AcousticsState>(this, _$identity);
}

abstract class _AcousticsState implements AcousticsState {
  const factory _AcousticsState(
      {bool isLoading,
      List<Acoustics> acousticsList,
      bool acousticsCreated}) = _$_AcousticsState;

  @override
  bool get isLoading;
  @override
  List<Acoustics> get acousticsList;
  @override
  bool get acousticsCreated;
  @override
  @JsonKey(ignore: true)
  _$AcousticsStateCopyWith<_AcousticsState> get copyWith =>
      throw _privateConstructorUsedError;
}
