// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LoginStateTearOff {
  const _$LoginStateTearOff();

  _InitState initState() {
    return const _InitState();
  }

  _Successfully successfully() {
    return const _Successfully();
  }

  _Error error({required String message}) {
    return _Error(
      message: message,
    );
  }

  _SingOut singOut() {
    return const _SingOut();
  }
}

/// @nodoc
const $LoginState = _$LoginStateTearOff();

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initState,
    required TResult Function() successfully,
    required TResult Function(String message) error,
    required TResult Function() singOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initState,
    TResult Function()? successfully,
    TResult Function(String message)? error,
    TResult Function()? singOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initState,
    TResult Function()? successfully,
    TResult Function(String message)? error,
    TResult Function()? singOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitState value) initState,
    required TResult Function(_Successfully value) successfully,
    required TResult Function(_Error value) error,
    required TResult Function(_SingOut value) singOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitState value)? initState,
    TResult Function(_Successfully value)? successfully,
    TResult Function(_Error value)? error,
    TResult Function(_SingOut value)? singOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitState value)? initState,
    TResult Function(_Successfully value)? successfully,
    TResult Function(_Error value)? error,
    TResult Function(_SingOut value)? singOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;
}

/// @nodoc
abstract class _$InitStateCopyWith<$Res> {
  factory _$InitStateCopyWith(
          _InitState value, $Res Function(_InitState) then) =
      __$InitStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitStateCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$InitStateCopyWith<$Res> {
  __$InitStateCopyWithImpl(_InitState _value, $Res Function(_InitState) _then)
      : super(_value, (v) => _then(v as _InitState));

  @override
  _InitState get _value => super._value as _InitState;
}

/// @nodoc

class _$_InitState implements _InitState {
  const _$_InitState();

  @override
  String toString() {
    return 'LoginState.initState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _InitState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initState,
    required TResult Function() successfully,
    required TResult Function(String message) error,
    required TResult Function() singOut,
  }) {
    return initState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initState,
    TResult Function()? successfully,
    TResult Function(String message)? error,
    TResult Function()? singOut,
  }) {
    return initState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initState,
    TResult Function()? successfully,
    TResult Function(String message)? error,
    TResult Function()? singOut,
    required TResult orElse(),
  }) {
    if (initState != null) {
      return initState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitState value) initState,
    required TResult Function(_Successfully value) successfully,
    required TResult Function(_Error value) error,
    required TResult Function(_SingOut value) singOut,
  }) {
    return initState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitState value)? initState,
    TResult Function(_Successfully value)? successfully,
    TResult Function(_Error value)? error,
    TResult Function(_SingOut value)? singOut,
  }) {
    return initState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitState value)? initState,
    TResult Function(_Successfully value)? successfully,
    TResult Function(_Error value)? error,
    TResult Function(_SingOut value)? singOut,
    required TResult orElse(),
  }) {
    if (initState != null) {
      return initState(this);
    }
    return orElse();
  }
}

abstract class _InitState implements LoginState {
  const factory _InitState() = _$_InitState;
}

/// @nodoc
abstract class _$SuccessfullyCopyWith<$Res> {
  factory _$SuccessfullyCopyWith(
          _Successfully value, $Res Function(_Successfully) then) =
      __$SuccessfullyCopyWithImpl<$Res>;
}

/// @nodoc
class __$SuccessfullyCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$SuccessfullyCopyWith<$Res> {
  __$SuccessfullyCopyWithImpl(
      _Successfully _value, $Res Function(_Successfully) _then)
      : super(_value, (v) => _then(v as _Successfully));

  @override
  _Successfully get _value => super._value as _Successfully;
}

/// @nodoc

class _$_Successfully implements _Successfully {
  const _$_Successfully();

  @override
  String toString() {
    return 'LoginState.successfully()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Successfully);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initState,
    required TResult Function() successfully,
    required TResult Function(String message) error,
    required TResult Function() singOut,
  }) {
    return successfully();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initState,
    TResult Function()? successfully,
    TResult Function(String message)? error,
    TResult Function()? singOut,
  }) {
    return successfully?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initState,
    TResult Function()? successfully,
    TResult Function(String message)? error,
    TResult Function()? singOut,
    required TResult orElse(),
  }) {
    if (successfully != null) {
      return successfully();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitState value) initState,
    required TResult Function(_Successfully value) successfully,
    required TResult Function(_Error value) error,
    required TResult Function(_SingOut value) singOut,
  }) {
    return successfully(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitState value)? initState,
    TResult Function(_Successfully value)? successfully,
    TResult Function(_Error value)? error,
    TResult Function(_SingOut value)? singOut,
  }) {
    return successfully?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitState value)? initState,
    TResult Function(_Successfully value)? successfully,
    TResult Function(_Error value)? error,
    TResult Function(_SingOut value)? singOut,
    required TResult orElse(),
  }) {
    if (successfully != null) {
      return successfully(this);
    }
    return orElse();
  }
}

abstract class _Successfully implements LoginState {
  const factory _Successfully() = _$_Successfully;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_Error(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'LoginState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Error &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initState,
    required TResult Function() successfully,
    required TResult Function(String message) error,
    required TResult Function() singOut,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initState,
    TResult Function()? successfully,
    TResult Function(String message)? error,
    TResult Function()? singOut,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initState,
    TResult Function()? successfully,
    TResult Function(String message)? error,
    TResult Function()? singOut,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitState value) initState,
    required TResult Function(_Successfully value) successfully,
    required TResult Function(_Error value) error,
    required TResult Function(_SingOut value) singOut,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitState value)? initState,
    TResult Function(_Successfully value)? successfully,
    TResult Function(_Error value)? error,
    TResult Function(_SingOut value)? singOut,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitState value)? initState,
    TResult Function(_Successfully value)? successfully,
    TResult Function(_Error value)? error,
    TResult Function(_SingOut value)? singOut,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements LoginState {
  const factory _Error({required String message}) = _$_Error;

  String get message;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SingOutCopyWith<$Res> {
  factory _$SingOutCopyWith(_SingOut value, $Res Function(_SingOut) then) =
      __$SingOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$SingOutCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$SingOutCopyWith<$Res> {
  __$SingOutCopyWithImpl(_SingOut _value, $Res Function(_SingOut) _then)
      : super(_value, (v) => _then(v as _SingOut));

  @override
  _SingOut get _value => super._value as _SingOut;
}

/// @nodoc

class _$_SingOut implements _SingOut {
  const _$_SingOut();

  @override
  String toString() {
    return 'LoginState.singOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _SingOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initState,
    required TResult Function() successfully,
    required TResult Function(String message) error,
    required TResult Function() singOut,
  }) {
    return singOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initState,
    TResult Function()? successfully,
    TResult Function(String message)? error,
    TResult Function()? singOut,
  }) {
    return singOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initState,
    TResult Function()? successfully,
    TResult Function(String message)? error,
    TResult Function()? singOut,
    required TResult orElse(),
  }) {
    if (singOut != null) {
      return singOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitState value) initState,
    required TResult Function(_Successfully value) successfully,
    required TResult Function(_Error value) error,
    required TResult Function(_SingOut value) singOut,
  }) {
    return singOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitState value)? initState,
    TResult Function(_Successfully value)? successfully,
    TResult Function(_Error value)? error,
    TResult Function(_SingOut value)? singOut,
  }) {
    return singOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitState value)? initState,
    TResult Function(_Successfully value)? successfully,
    TResult Function(_Error value)? error,
    TResult Function(_SingOut value)? singOut,
    required TResult orElse(),
  }) {
    if (singOut != null) {
      return singOut(this);
    }
    return orElse();
  }
}

abstract class _SingOut implements LoginState {
  const factory _SingOut() = _$_SingOut;
}
