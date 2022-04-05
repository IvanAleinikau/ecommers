// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'vinyl_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$VinylStateTearOff {
  const _$VinylStateTearOff();

  _VinylState call(
      {bool isLoading = false,
      List<Vinyl> vinylList = const [],
      bool vinylCreated = false}) {
    return _VinylState(
      isLoading: isLoading,
      vinylList: vinylList,
      vinylCreated: vinylCreated,
    );
  }
}

/// @nodoc
const $VinylState = _$VinylStateTearOff();

/// @nodoc
mixin _$VinylState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Vinyl> get vinylList => throw _privateConstructorUsedError;
  bool get vinylCreated => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VinylStateCopyWith<VinylState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VinylStateCopyWith<$Res> {
  factory $VinylStateCopyWith(
          VinylState value, $Res Function(VinylState) then) =
      _$VinylStateCopyWithImpl<$Res>;
  $Res call({bool isLoading, List<Vinyl> vinylList, bool vinylCreated});
}

/// @nodoc
class _$VinylStateCopyWithImpl<$Res> implements $VinylStateCopyWith<$Res> {
  _$VinylStateCopyWithImpl(this._value, this._then);

  final VinylState _value;
  // ignore: unused_field
  final $Res Function(VinylState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? vinylList = freezed,
    Object? vinylCreated = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      vinylList: vinylList == freezed
          ? _value.vinylList
          : vinylList // ignore: cast_nullable_to_non_nullable
              as List<Vinyl>,
      vinylCreated: vinylCreated == freezed
          ? _value.vinylCreated
          : vinylCreated // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$VinylStateCopyWith<$Res> implements $VinylStateCopyWith<$Res> {
  factory _$VinylStateCopyWith(
          _VinylState value, $Res Function(_VinylState) then) =
      __$VinylStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, List<Vinyl> vinylList, bool vinylCreated});
}

/// @nodoc
class __$VinylStateCopyWithImpl<$Res> extends _$VinylStateCopyWithImpl<$Res>
    implements _$VinylStateCopyWith<$Res> {
  __$VinylStateCopyWithImpl(
      _VinylState _value, $Res Function(_VinylState) _then)
      : super(_value, (v) => _then(v as _VinylState));

  @override
  _VinylState get _value => super._value as _VinylState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? vinylList = freezed,
    Object? vinylCreated = freezed,
  }) {
    return _then(_VinylState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      vinylList: vinylList == freezed
          ? _value.vinylList
          : vinylList // ignore: cast_nullable_to_non_nullable
              as List<Vinyl>,
      vinylCreated: vinylCreated == freezed
          ? _value.vinylCreated
          : vinylCreated // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_VinylState implements _VinylState {
  const _$_VinylState(
      {this.isLoading = false,
      this.vinylList = const [],
      this.vinylCreated = false});

  @JsonKey()
  @override
  final bool isLoading;
  @JsonKey()
  @override
  final List<Vinyl> vinylList;
  @JsonKey()
  @override
  final bool vinylCreated;

  @override
  String toString() {
    return 'VinylState(isLoading: $isLoading, vinylList: $vinylList, vinylCreated: $vinylCreated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VinylState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.vinylList, vinylList) &&
            const DeepCollectionEquality()
                .equals(other.vinylCreated, vinylCreated));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(vinylList),
      const DeepCollectionEquality().hash(vinylCreated));

  @JsonKey(ignore: true)
  @override
  _$VinylStateCopyWith<_VinylState> get copyWith =>
      __$VinylStateCopyWithImpl<_VinylState>(this, _$identity);
}

abstract class _VinylState implements VinylState {
  const factory _VinylState(
      {bool isLoading,
      List<Vinyl> vinylList,
      bool vinylCreated}) = _$_VinylState;

  @override
  bool get isLoading;
  @override
  List<Vinyl> get vinylList;
  @override
  bool get vinylCreated;
  @override
  @JsonKey(ignore: true)
  _$VinylStateCopyWith<_VinylState> get copyWith =>
      throw _privateConstructorUsedError;
}
