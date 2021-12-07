// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'consultation_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ConsultationRequestTearOff {
  const _$ConsultationRequestTearOff();

  _ConsultationRequest call(
      {required String name,
      required String phoneNumber,
      required String email}) {
    return _ConsultationRequest(
      name: name,
      phoneNumber: phoneNumber,
      email: email,
    );
  }
}

/// @nodoc
const $ConsultationRequest = _$ConsultationRequestTearOff();

/// @nodoc
mixin _$ConsultationRequest {
  String get name => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConsultationRequestCopyWith<ConsultationRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultationRequestCopyWith<$Res> {
  factory $ConsultationRequestCopyWith(
          ConsultationRequest value, $Res Function(ConsultationRequest) then) =
      _$ConsultationRequestCopyWithImpl<$Res>;
  $Res call({String name, String phoneNumber, String email});
}

/// @nodoc
class _$ConsultationRequestCopyWithImpl<$Res>
    implements $ConsultationRequestCopyWith<$Res> {
  _$ConsultationRequestCopyWithImpl(this._value, this._then);

  final ConsultationRequest _value;
  // ignore: unused_field
  final $Res Function(ConsultationRequest) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? phoneNumber = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ConsultationRequestCopyWith<$Res>
    implements $ConsultationRequestCopyWith<$Res> {
  factory _$ConsultationRequestCopyWith(_ConsultationRequest value,
          $Res Function(_ConsultationRequest) then) =
      __$ConsultationRequestCopyWithImpl<$Res>;
  @override
  $Res call({String name, String phoneNumber, String email});
}

/// @nodoc
class __$ConsultationRequestCopyWithImpl<$Res>
    extends _$ConsultationRequestCopyWithImpl<$Res>
    implements _$ConsultationRequestCopyWith<$Res> {
  __$ConsultationRequestCopyWithImpl(
      _ConsultationRequest _value, $Res Function(_ConsultationRequest) _then)
      : super(_value, (v) => _then(v as _ConsultationRequest));

  @override
  _ConsultationRequest get _value => super._value as _ConsultationRequest;

  @override
  $Res call({
    Object? name = freezed,
    Object? phoneNumber = freezed,
    Object? email = freezed,
  }) {
    return _then(_ConsultationRequest(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ConsultationRequest implements _ConsultationRequest {
  _$_ConsultationRequest(
      {required this.name, required this.phoneNumber, required this.email});

  @override
  final String name;
  @override
  final String phoneNumber;
  @override
  final String email;

  @override
  String toString() {
    return 'ConsultationRequest(name: $name, phoneNumber: $phoneNumber, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ConsultationRequest &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  _$ConsultationRequestCopyWith<_ConsultationRequest> get copyWith =>
      __$ConsultationRequestCopyWithImpl<_ConsultationRequest>(
          this, _$identity);
}

abstract class _ConsultationRequest implements ConsultationRequest {
  factory _ConsultationRequest(
      {required String name,
      required String phoneNumber,
      required String email}) = _$_ConsultationRequest;

  @override
  String get name;
  @override
  String get phoneNumber;
  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$ConsultationRequestCopyWith<_ConsultationRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
