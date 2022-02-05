// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
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

  CreateRequest createRequest(
      {required String name, required String phoneNumber}) {
    return CreateRequest(
      name: name,
      phoneNumber: phoneNumber,
    );
  }

  FetchRequest fetchRequest() {
    return FetchRequest();
  }
}

/// @nodoc
const $ConsultationEvent = _$ConsultationEventTearOff();

/// @nodoc
mixin _$ConsultationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String phoneNumber) createRequest,
    required TResult Function() fetchRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name, String phoneNumber)? createRequest,
    TResult Function()? fetchRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String phoneNumber)? createRequest,
    TResult Function()? fetchRequest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateRequest value) createRequest,
    required TResult Function(FetchRequest value) fetchRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreateRequest value)? createRequest,
    TResult Function(FetchRequest value)? fetchRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateRequest value)? createRequest,
    TResult Function(FetchRequest value)? fetchRequest,
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
  $Res call({String name, String phoneNumber});
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

  @override
  $Res call({
    Object? name = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(CreateRequest(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateRequest implements CreateRequest {
  _$CreateRequest({required this.name, required this.phoneNumber});

  @override
  final String name;
  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'ConsultationEvent.createRequest(name: $name, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateRequest &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(phoneNumber));

  @JsonKey(ignore: true)
  @override
  $CreateRequestCopyWith<CreateRequest> get copyWith =>
      _$CreateRequestCopyWithImpl<CreateRequest>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String phoneNumber) createRequest,
    required TResult Function() fetchRequest,
  }) {
    return createRequest(name, phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name, String phoneNumber)? createRequest,
    TResult Function()? fetchRequest,
  }) {
    return createRequest?.call(name, phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String phoneNumber)? createRequest,
    TResult Function()? fetchRequest,
    required TResult orElse(),
  }) {
    if (createRequest != null) {
      return createRequest(name, phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateRequest value) createRequest,
    required TResult Function(FetchRequest value) fetchRequest,
  }) {
    return createRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreateRequest value)? createRequest,
    TResult Function(FetchRequest value)? fetchRequest,
  }) {
    return createRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateRequest value)? createRequest,
    TResult Function(FetchRequest value)? fetchRequest,
    required TResult orElse(),
  }) {
    if (createRequest != null) {
      return createRequest(this);
    }
    return orElse();
  }
}

abstract class CreateRequest implements ConsultationEvent {
  factory CreateRequest({required String name, required String phoneNumber}) =
      _$CreateRequest;

  String get name;
  String get phoneNumber;
  @JsonKey(ignore: true)
  $CreateRequestCopyWith<CreateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchRequestCopyWith<$Res> {
  factory $FetchRequestCopyWith(
          FetchRequest value, $Res Function(FetchRequest) then) =
      _$FetchRequestCopyWithImpl<$Res>;
}

/// @nodoc
class _$FetchRequestCopyWithImpl<$Res>
    extends _$ConsultationEventCopyWithImpl<$Res>
    implements $FetchRequestCopyWith<$Res> {
  _$FetchRequestCopyWithImpl(
      FetchRequest _value, $Res Function(FetchRequest) _then)
      : super(_value, (v) => _then(v as FetchRequest));

  @override
  FetchRequest get _value => super._value as FetchRequest;
}

/// @nodoc

class _$FetchRequest implements FetchRequest {
  _$FetchRequest();

  @override
  String toString() {
    return 'ConsultationEvent.fetchRequest()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FetchRequest);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String phoneNumber) createRequest,
    required TResult Function() fetchRequest,
  }) {
    return fetchRequest();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name, String phoneNumber)? createRequest,
    TResult Function()? fetchRequest,
  }) {
    return fetchRequest?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String phoneNumber)? createRequest,
    TResult Function()? fetchRequest,
    required TResult orElse(),
  }) {
    if (fetchRequest != null) {
      return fetchRequest();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateRequest value) createRequest,
    required TResult Function(FetchRequest value) fetchRequest,
  }) {
    return fetchRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreateRequest value)? createRequest,
    TResult Function(FetchRequest value)? fetchRequest,
  }) {
    return fetchRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateRequest value)? createRequest,
    TResult Function(FetchRequest value)? fetchRequest,
    required TResult orElse(),
  }) {
    if (fetchRequest != null) {
      return fetchRequest(this);
    }
    return orElse();
  }
}

abstract class FetchRequest implements ConsultationEvent {
  factory FetchRequest() = _$FetchRequest;
}
