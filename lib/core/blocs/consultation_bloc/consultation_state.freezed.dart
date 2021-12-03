// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'consultation_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ConsultationStateTearOff {
  const _$ConsultationStateTearOff();

  ConsultationInitState initState() {
    return ConsultationInitState();
  }

  IsValidNameAndPhone isValid(
      {bool isNameValid = false, bool isPhoneNumberValid = false}) {
    return IsValidNameAndPhone(
      isNameValid: isNameValid,
      isPhoneNumberValid: isPhoneNumberValid,
    );
  }
}

/// @nodoc
const $ConsultationState = _$ConsultationStateTearOff();

/// @nodoc
mixin _$ConsultationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initState,
    required TResult Function(bool isNameValid, bool isPhoneNumberValid)
        isValid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initState,
    TResult Function(bool isNameValid, bool isPhoneNumberValid)? isValid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initState,
    TResult Function(bool isNameValid, bool isPhoneNumberValid)? isValid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConsultationInitState value) initState,
    required TResult Function(IsValidNameAndPhone value) isValid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ConsultationInitState value)? initState,
    TResult Function(IsValidNameAndPhone value)? isValid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConsultationInitState value)? initState,
    TResult Function(IsValidNameAndPhone value)? isValid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultationStateCopyWith<$Res> {
  factory $ConsultationStateCopyWith(
          ConsultationState value, $Res Function(ConsultationState) then) =
      _$ConsultationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConsultationStateCopyWithImpl<$Res>
    implements $ConsultationStateCopyWith<$Res> {
  _$ConsultationStateCopyWithImpl(this._value, this._then);

  final ConsultationState _value;
  // ignore: unused_field
  final $Res Function(ConsultationState) _then;
}

/// @nodoc
abstract class $ConsultationInitStateCopyWith<$Res> {
  factory $ConsultationInitStateCopyWith(ConsultationInitState value,
          $Res Function(ConsultationInitState) then) =
      _$ConsultationInitStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConsultationInitStateCopyWithImpl<$Res>
    extends _$ConsultationStateCopyWithImpl<$Res>
    implements $ConsultationInitStateCopyWith<$Res> {
  _$ConsultationInitStateCopyWithImpl(
      ConsultationInitState _value, $Res Function(ConsultationInitState) _then)
      : super(_value, (v) => _then(v as ConsultationInitState));

  @override
  ConsultationInitState get _value => super._value as ConsultationInitState;
}

/// @nodoc

class _$ConsultationInitState implements ConsultationInitState {
  _$ConsultationInitState();

  @override
  String toString() {
    return 'ConsultationState.initState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ConsultationInitState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initState,
    required TResult Function(bool isNameValid, bool isPhoneNumberValid)
        isValid,
  }) {
    return initState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initState,
    TResult Function(bool isNameValid, bool isPhoneNumberValid)? isValid,
  }) {
    return initState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initState,
    TResult Function(bool isNameValid, bool isPhoneNumberValid)? isValid,
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
    required TResult Function(ConsultationInitState value) initState,
    required TResult Function(IsValidNameAndPhone value) isValid,
  }) {
    return initState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ConsultationInitState value)? initState,
    TResult Function(IsValidNameAndPhone value)? isValid,
  }) {
    return initState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConsultationInitState value)? initState,
    TResult Function(IsValidNameAndPhone value)? isValid,
    required TResult orElse(),
  }) {
    if (initState != null) {
      return initState(this);
    }
    return orElse();
  }
}

abstract class ConsultationInitState implements ConsultationState {
  factory ConsultationInitState() = _$ConsultationInitState;
}

/// @nodoc
abstract class $IsValidNameAndPhoneCopyWith<$Res> {
  factory $IsValidNameAndPhoneCopyWith(
          IsValidNameAndPhone value, $Res Function(IsValidNameAndPhone) then) =
      _$IsValidNameAndPhoneCopyWithImpl<$Res>;
  $Res call({bool isNameValid, bool isPhoneNumberValid});
}

/// @nodoc
class _$IsValidNameAndPhoneCopyWithImpl<$Res>
    extends _$ConsultationStateCopyWithImpl<$Res>
    implements $IsValidNameAndPhoneCopyWith<$Res> {
  _$IsValidNameAndPhoneCopyWithImpl(
      IsValidNameAndPhone _value, $Res Function(IsValidNameAndPhone) _then)
      : super(_value, (v) => _then(v as IsValidNameAndPhone));

  @override
  IsValidNameAndPhone get _value => super._value as IsValidNameAndPhone;

  @override
  $Res call({
    Object? isNameValid = freezed,
    Object? isPhoneNumberValid = freezed,
  }) {
    return _then(IsValidNameAndPhone(
      isNameValid: isNameValid == freezed
          ? _value.isNameValid
          : isNameValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isPhoneNumberValid: isPhoneNumberValid == freezed
          ? _value.isPhoneNumberValid
          : isPhoneNumberValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$IsValidNameAndPhone implements IsValidNameAndPhone {
  _$IsValidNameAndPhone(
      {this.isNameValid = false, this.isPhoneNumberValid = false});

  @JsonKey(defaultValue: false)
  @override
  final bool isNameValid;
  @JsonKey(defaultValue: false)
  @override
  final bool isPhoneNumberValid;

  @override
  String toString() {
    return 'ConsultationState.isValid(isNameValid: $isNameValid, isPhoneNumberValid: $isPhoneNumberValid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is IsValidNameAndPhone &&
            (identical(other.isNameValid, isNameValid) ||
                other.isNameValid == isNameValid) &&
            (identical(other.isPhoneNumberValid, isPhoneNumberValid) ||
                other.isPhoneNumberValid == isPhoneNumberValid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isNameValid, isPhoneNumberValid);

  @JsonKey(ignore: true)
  @override
  $IsValidNameAndPhoneCopyWith<IsValidNameAndPhone> get copyWith =>
      _$IsValidNameAndPhoneCopyWithImpl<IsValidNameAndPhone>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initState,
    required TResult Function(bool isNameValid, bool isPhoneNumberValid)
        isValid,
  }) {
    return isValid(isNameValid, isPhoneNumberValid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initState,
    TResult Function(bool isNameValid, bool isPhoneNumberValid)? isValid,
  }) {
    return isValid?.call(isNameValid, isPhoneNumberValid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initState,
    TResult Function(bool isNameValid, bool isPhoneNumberValid)? isValid,
    required TResult orElse(),
  }) {
    if (isValid != null) {
      return isValid(isNameValid, isPhoneNumberValid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConsultationInitState value) initState,
    required TResult Function(IsValidNameAndPhone value) isValid,
  }) {
    return isValid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ConsultationInitState value)? initState,
    TResult Function(IsValidNameAndPhone value)? isValid,
  }) {
    return isValid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConsultationInitState value)? initState,
    TResult Function(IsValidNameAndPhone value)? isValid,
    required TResult orElse(),
  }) {
    if (isValid != null) {
      return isValid(this);
    }
    return orElse();
  }
}

abstract class IsValidNameAndPhone implements ConsultationState {
  factory IsValidNameAndPhone({bool isNameValid, bool isPhoneNumberValid}) =
      _$IsValidNameAndPhone;

  bool get isNameValid;
  bool get isPhoneNumberValid;
  @JsonKey(ignore: true)
  $IsValidNameAndPhoneCopyWith<IsValidNameAndPhone> get copyWith =>
      throw _privateConstructorUsedError;
}
