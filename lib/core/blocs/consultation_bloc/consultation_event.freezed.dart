// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'consultation_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ConsultationEventTearOff {
  const _$ConsultationEventTearOff();

  CreateRequest createRequest() {
    return CreateRequest();
  }
}

/// @nodoc
const $ConsultationEvent = _$ConsultationEventTearOff();

/// @nodoc
mixin _$ConsultationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() createRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? createRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? createRequest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateRequest value) createRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreateRequest value)? createRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateRequest value)? createRequest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultationEventCopyWith<$Res> {
  factory $ConsultationEventCopyWith(
          ConsultationEvent value, $Res Function(ConsultationEvent) then) =
      _$ConsultationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConsultationEventCopyWithImpl<$Res>
    implements $ConsultationEventCopyWith<$Res> {
  _$ConsultationEventCopyWithImpl(this._value, this._then);

  final ConsultationEvent _value;
  // ignore: unused_field
  final $Res Function(ConsultationEvent) _then;
}

/// @nodoc
abstract class $CreateRequestCopyWith<$Res> {
  factory $CreateRequestCopyWith(
          CreateRequest value, $Res Function(CreateRequest) then) =
      _$CreateRequestCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateRequestCopyWithImpl<$Res>
    extends _$ConsultationEventCopyWithImpl<$Res>
    implements $CreateRequestCopyWith<$Res> {
  _$CreateRequestCopyWithImpl(
      CreateRequest _value, $Res Function(CreateRequest) _then)
      : super(_value, (v) => _then(v as CreateRequest));

  @override
  CreateRequest get _value => super._value as CreateRequest;
}

/// @nodoc

class _$CreateRequest implements CreateRequest {
  _$CreateRequest();

  @override
  String toString() {
    return 'ConsultationEvent.createRequest()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CreateRequest);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() createRequest,
  }) {
    return createRequest();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? createRequest,
  }) {
    return createRequest?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? createRequest,
    required TResult orElse(),
  }) {
    if (createRequest != null) {
      return createRequest();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateRequest value) createRequest,
  }) {
    return createRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreateRequest value)? createRequest,
  }) {
    return createRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateRequest value)? createRequest,
    required TResult orElse(),
  }) {
    if (createRequest != null) {
      return createRequest(this);
    }
    return orElse();
  }
}

abstract class CreateRequest implements ConsultationEvent {
  factory CreateRequest() = _$CreateRequest;
}
