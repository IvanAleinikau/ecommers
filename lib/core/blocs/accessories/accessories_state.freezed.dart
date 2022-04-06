// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'accessories_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AccessoriesStateTearOff {
  const _$AccessoriesStateTearOff();

  _AccessoriesState call(
      {bool isLoading = false,
      List<Accessories> accessoriesList = const [],
      bool accessoriesCreated = false}) {
    return _AccessoriesState(
      isLoading: isLoading,
      accessoriesList: accessoriesList,
      accessoriesCreated: accessoriesCreated,
    );
  }
}

/// @nodoc
const $AccessoriesState = _$AccessoriesStateTearOff();

/// @nodoc
mixin _$AccessoriesState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Accessories> get accessoriesList => throw _privateConstructorUsedError;
  bool get accessoriesCreated => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccessoriesStateCopyWith<AccessoriesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccessoriesStateCopyWith<$Res> {
  factory $AccessoriesStateCopyWith(
          AccessoriesState value, $Res Function(AccessoriesState) then) =
      _$AccessoriesStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      List<Accessories> accessoriesList,
      bool accessoriesCreated});
}

/// @nodoc
class _$AccessoriesStateCopyWithImpl<$Res>
    implements $AccessoriesStateCopyWith<$Res> {
  _$AccessoriesStateCopyWithImpl(this._value, this._then);

  final AccessoriesState _value;
  // ignore: unused_field
  final $Res Function(AccessoriesState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? accessoriesList = freezed,
    Object? accessoriesCreated = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      accessoriesList: accessoriesList == freezed
          ? _value.accessoriesList
          : accessoriesList // ignore: cast_nullable_to_non_nullable
              as List<Accessories>,
      accessoriesCreated: accessoriesCreated == freezed
          ? _value.accessoriesCreated
          : accessoriesCreated // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$AccessoriesStateCopyWith<$Res>
    implements $AccessoriesStateCopyWith<$Res> {
  factory _$AccessoriesStateCopyWith(
          _AccessoriesState value, $Res Function(_AccessoriesState) then) =
      __$AccessoriesStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      List<Accessories> accessoriesList,
      bool accessoriesCreated});
}

/// @nodoc
class __$AccessoriesStateCopyWithImpl<$Res>
    extends _$AccessoriesStateCopyWithImpl<$Res>
    implements _$AccessoriesStateCopyWith<$Res> {
  __$AccessoriesStateCopyWithImpl(
      _AccessoriesState _value, $Res Function(_AccessoriesState) _then)
      : super(_value, (v) => _then(v as _AccessoriesState));

  @override
  _AccessoriesState get _value => super._value as _AccessoriesState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? accessoriesList = freezed,
    Object? accessoriesCreated = freezed,
  }) {
    return _then(_AccessoriesState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      accessoriesList: accessoriesList == freezed
          ? _value.accessoriesList
          : accessoriesList // ignore: cast_nullable_to_non_nullable
              as List<Accessories>,
      accessoriesCreated: accessoriesCreated == freezed
          ? _value.accessoriesCreated
          : accessoriesCreated // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AccessoriesState implements _AccessoriesState {
  const _$_AccessoriesState(
      {this.isLoading = false,
      this.accessoriesList = const [],
      this.accessoriesCreated = false});

  @JsonKey()
  @override
  final bool isLoading;
  @JsonKey()
  @override
  final List<Accessories> accessoriesList;
  @JsonKey()
  @override
  final bool accessoriesCreated;

  @override
  String toString() {
    return 'AccessoriesState(isLoading: $isLoading, accessoriesList: $accessoriesList, accessoriesCreated: $accessoriesCreated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AccessoriesState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.accessoriesList, accessoriesList) &&
            const DeepCollectionEquality()
                .equals(other.accessoriesCreated, accessoriesCreated));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(accessoriesList),
      const DeepCollectionEquality().hash(accessoriesCreated));

  @JsonKey(ignore: true)
  @override
  _$AccessoriesStateCopyWith<_AccessoriesState> get copyWith =>
      __$AccessoriesStateCopyWithImpl<_AccessoriesState>(this, _$identity);
}

abstract class _AccessoriesState implements AccessoriesState {
  const factory _AccessoriesState(
      {bool isLoading,
      List<Accessories> accessoriesList,
      bool accessoriesCreated}) = _$_AccessoriesState;

  @override
  bool get isLoading;
  @override
  List<Accessories> get accessoriesList;
  @override
  bool get accessoriesCreated;
  @override
  @JsonKey(ignore: true)
  _$AccessoriesStateCopyWith<_AccessoriesState> get copyWith =>
      throw _privateConstructorUsedError;
}
