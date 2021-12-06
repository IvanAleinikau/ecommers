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

  CheckValidName checkValidName(String name) {
    return CheckValidName(
      name,
    );
  }

  CheckValidPhoneNumber checkValidPhoneNumber(String phoneNumber) {
    return CheckValidPhoneNumber(
      phoneNumber,
    );
  }
}

/// @nodoc
const $ConsultationEvent = _$ConsultationEventTearOff();

/// @nodoc
mixin _$ConsultationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() createRequest,
    required TResult Function(String name) checkValidName,
    required TResult Function(String phoneNumber) checkValidPhoneNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? createRequest,
    TResult Function(String name)? checkValidName,
    TResult Function(String phoneNumber)? checkValidPhoneNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? createRequest,
    TResult Function(String name)? checkValidName,
    TResult Function(String phoneNumber)? checkValidPhoneNumber,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateRequest value) createRequest,
    required TResult Function(CheckValidName value) checkValidName,
    required TResult Function(CheckValidPhoneNumber value)
        checkValidPhoneNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreateRequest value)? createRequest,
    TResult Function(CheckValidName value)? checkValidName,
    TResult Function(CheckValidPhoneNumber value)? checkValidPhoneNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateRequest value)? createRequest,
    TResult Function(CheckValidName value)? checkValidName,
    TResult Function(CheckValidPhoneNumber value)? checkValidPhoneNumber,
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
    required TResult Function(String name) checkValidName,
    required TResult Function(String phoneNumber) checkValidPhoneNumber,
  }) {
    return createRequest();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? createRequest,
    TResult Function(String name)? checkValidName,
    TResult Function(String phoneNumber)? checkValidPhoneNumber,
  }) {
    return createRequest?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? createRequest,
    TResult Function(String name)? checkValidName,
    TResult Function(String phoneNumber)? checkValidPhoneNumber,
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
    required TResult Function(CheckValidName value) checkValidName,
    required TResult Function(CheckValidPhoneNumber value)
        checkValidPhoneNumber,
  }) {
    return createRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreateRequest value)? createRequest,
    TResult Function(CheckValidName value)? checkValidName,
    TResult Function(CheckValidPhoneNumber value)? checkValidPhoneNumber,
  }) {
    return createRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateRequest value)? createRequest,
    TResult Function(CheckValidName value)? checkValidName,
    TResult Function(CheckValidPhoneNumber value)? checkValidPhoneNumber,
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

/// @nodoc
abstract class $CheckValidNameCopyWith<$Res> {
  factory $CheckValidNameCopyWith(
          CheckValidName value, $Res Function(CheckValidName) then) =
      _$CheckValidNameCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$CheckValidNameCopyWithImpl<$Res>
    extends _$ConsultationEventCopyWithImpl<$Res>
    implements $CheckValidNameCopyWith<$Res> {
  _$CheckValidNameCopyWithImpl(
      CheckValidName _value, $Res Function(CheckValidName) _then)
      : super(_value, (v) => _then(v as CheckValidName));

  @override
  CheckValidName get _value => super._value as CheckValidName;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(CheckValidName(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CheckValidName implements CheckValidName {
  _$CheckValidName(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'ConsultationEvent.checkValidName(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CheckValidName &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  $CheckValidNameCopyWith<CheckValidName> get copyWith =>
      _$CheckValidNameCopyWithImpl<CheckValidName>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() createRequest,
    required TResult Function(String name) checkValidName,
    required TResult Function(String phoneNumber) checkValidPhoneNumber,
  }) {
    return checkValidName(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? createRequest,
    TResult Function(String name)? checkValidName,
    TResult Function(String phoneNumber)? checkValidPhoneNumber,
  }) {
    return checkValidName?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? createRequest,
    TResult Function(String name)? checkValidName,
    TResult Function(String phoneNumber)? checkValidPhoneNumber,
    required TResult orElse(),
  }) {
    if (checkValidName != null) {
      return checkValidName(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateRequest value) createRequest,
    required TResult Function(CheckValidName value) checkValidName,
    required TResult Function(CheckValidPhoneNumber value)
        checkValidPhoneNumber,
  }) {
    return checkValidName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreateRequest value)? createRequest,
    TResult Function(CheckValidName value)? checkValidName,
    TResult Function(CheckValidPhoneNumber value)? checkValidPhoneNumber,
  }) {
    return checkValidName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateRequest value)? createRequest,
    TResult Function(CheckValidName value)? checkValidName,
    TResult Function(CheckValidPhoneNumber value)? checkValidPhoneNumber,
    required TResult orElse(),
  }) {
    if (checkValidName != null) {
      return checkValidName(this);
    }
    return orElse();
  }
}

abstract class CheckValidName implements ConsultationEvent {
  factory CheckValidName(String name) = _$CheckValidName;

  String get name;
  @JsonKey(ignore: true)
  $CheckValidNameCopyWith<CheckValidName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckValidPhoneNumberCopyWith<$Res> {
  factory $CheckValidPhoneNumberCopyWith(CheckValidPhoneNumber value,
          $Res Function(CheckValidPhoneNumber) then) =
      _$CheckValidPhoneNumberCopyWithImpl<$Res>;
  $Res call({String phoneNumber});
}

/// @nodoc
class _$CheckValidPhoneNumberCopyWithImpl<$Res>
    extends _$ConsultationEventCopyWithImpl<$Res>
    implements $CheckValidPhoneNumberCopyWith<$Res> {
  _$CheckValidPhoneNumberCopyWithImpl(
      CheckValidPhoneNumber _value, $Res Function(CheckValidPhoneNumber) _then)
      : super(_value, (v) => _then(v as CheckValidPhoneNumber));

  @override
  CheckValidPhoneNumber get _value => super._value as CheckValidPhoneNumber;

  @override
  $Res call({
    Object? phoneNumber = freezed,
  }) {
    return _then(CheckValidPhoneNumber(
      phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CheckValidPhoneNumber implements CheckValidPhoneNumber {
  _$CheckValidPhoneNumber(this.phoneNumber);

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'ConsultationEvent.checkValidPhoneNumber(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CheckValidPhoneNumber &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(phoneNumber));

  @JsonKey(ignore: true)
  @override
  $CheckValidPhoneNumberCopyWith<CheckValidPhoneNumber> get copyWith =>
      _$CheckValidPhoneNumberCopyWithImpl<CheckValidPhoneNumber>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() createRequest,
    required TResult Function(String name) checkValidName,
    required TResult Function(String phoneNumber) checkValidPhoneNumber,
  }) {
    return checkValidPhoneNumber(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? createRequest,
    TResult Function(String name)? checkValidName,
    TResult Function(String phoneNumber)? checkValidPhoneNumber,
  }) {
    return checkValidPhoneNumber?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? createRequest,
    TResult Function(String name)? checkValidName,
    TResult Function(String phoneNumber)? checkValidPhoneNumber,
    required TResult orElse(),
  }) {
    if (checkValidPhoneNumber != null) {
      return checkValidPhoneNumber(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateRequest value) createRequest,
    required TResult Function(CheckValidName value) checkValidName,
    required TResult Function(CheckValidPhoneNumber value)
        checkValidPhoneNumber,
  }) {
    return checkValidPhoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreateRequest value)? createRequest,
    TResult Function(CheckValidName value)? checkValidName,
    TResult Function(CheckValidPhoneNumber value)? checkValidPhoneNumber,
  }) {
    return checkValidPhoneNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateRequest value)? createRequest,
    TResult Function(CheckValidName value)? checkValidName,
    TResult Function(CheckValidPhoneNumber value)? checkValidPhoneNumber,
    required TResult orElse(),
  }) {
    if (checkValidPhoneNumber != null) {
      return checkValidPhoneNumber(this);
    }
    return orElse();
  }
}

abstract class CheckValidPhoneNumber implements ConsultationEvent {
  factory CheckValidPhoneNumber(String phoneNumber) = _$CheckValidPhoneNumber;

  String get phoneNumber;
  @JsonKey(ignore: true)
  $CheckValidPhoneNumberCopyWith<CheckValidPhoneNumber> get copyWith =>
      throw _privateConstructorUsedError;
}
