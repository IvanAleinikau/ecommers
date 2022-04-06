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

  UpdateRequest update({required ConsultationRequest request}) {
    return UpdateRequest(
      request: request,
    );
  }

  DeleteRequest delete({required ConsultationRequest request}) {
    return DeleteRequest(
      request: request,
    );
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
    required TResult Function(ConsultationRequest request) update,
    required TResult Function(ConsultationRequest request) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name, String phoneNumber)? createRequest,
    TResult Function()? fetchRequest,
    TResult Function(ConsultationRequest request)? update,
    TResult Function(ConsultationRequest request)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String phoneNumber)? createRequest,
    TResult Function()? fetchRequest,
    TResult Function(ConsultationRequest request)? update,
    TResult Function(ConsultationRequest request)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateRequest value) createRequest,
    required TResult Function(FetchRequest value) fetchRequest,
    required TResult Function(UpdateRequest value) update,
    required TResult Function(DeleteRequest value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreateRequest value)? createRequest,
    TResult Function(FetchRequest value)? fetchRequest,
    TResult Function(UpdateRequest value)? update,
    TResult Function(DeleteRequest value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateRequest value)? createRequest,
    TResult Function(FetchRequest value)? fetchRequest,
    TResult Function(UpdateRequest value)? update,
    TResult Function(DeleteRequest value)? delete,
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
    required TResult Function(ConsultationRequest request) update,
    required TResult Function(ConsultationRequest request) delete,
  }) {
    return createRequest(name, phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name, String phoneNumber)? createRequest,
    TResult Function()? fetchRequest,
    TResult Function(ConsultationRequest request)? update,
    TResult Function(ConsultationRequest request)? delete,
  }) {
    return createRequest?.call(name, phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String phoneNumber)? createRequest,
    TResult Function()? fetchRequest,
    TResult Function(ConsultationRequest request)? update,
    TResult Function(ConsultationRequest request)? delete,
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
    required TResult Function(UpdateRequest value) update,
    required TResult Function(DeleteRequest value) delete,
  }) {
    return createRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreateRequest value)? createRequest,
    TResult Function(FetchRequest value)? fetchRequest,
    TResult Function(UpdateRequest value)? update,
    TResult Function(DeleteRequest value)? delete,
  }) {
    return createRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateRequest value)? createRequest,
    TResult Function(FetchRequest value)? fetchRequest,
    TResult Function(UpdateRequest value)? update,
    TResult Function(DeleteRequest value)? delete,
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
    required TResult Function(ConsultationRequest request) update,
    required TResult Function(ConsultationRequest request) delete,
  }) {
    return fetchRequest();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name, String phoneNumber)? createRequest,
    TResult Function()? fetchRequest,
    TResult Function(ConsultationRequest request)? update,
    TResult Function(ConsultationRequest request)? delete,
  }) {
    return fetchRequest?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String phoneNumber)? createRequest,
    TResult Function()? fetchRequest,
    TResult Function(ConsultationRequest request)? update,
    TResult Function(ConsultationRequest request)? delete,
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
    required TResult Function(UpdateRequest value) update,
    required TResult Function(DeleteRequest value) delete,
  }) {
    return fetchRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreateRequest value)? createRequest,
    TResult Function(FetchRequest value)? fetchRequest,
    TResult Function(UpdateRequest value)? update,
    TResult Function(DeleteRequest value)? delete,
  }) {
    return fetchRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateRequest value)? createRequest,
    TResult Function(FetchRequest value)? fetchRequest,
    TResult Function(UpdateRequest value)? update,
    TResult Function(DeleteRequest value)? delete,
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

/// @nodoc
abstract class $UpdateRequestCopyWith<$Res> {
  factory $UpdateRequestCopyWith(
          UpdateRequest value, $Res Function(UpdateRequest) then) =
      _$UpdateRequestCopyWithImpl<$Res>;
  $Res call({ConsultationRequest request});

  $ConsultationRequestCopyWith<$Res> get request;
}

/// @nodoc
class _$UpdateRequestCopyWithImpl<$Res>
    extends _$ConsultationEventCopyWithImpl<$Res>
    implements $UpdateRequestCopyWith<$Res> {
  _$UpdateRequestCopyWithImpl(
      UpdateRequest _value, $Res Function(UpdateRequest) _then)
      : super(_value, (v) => _then(v as UpdateRequest));

  @override
  UpdateRequest get _value => super._value as UpdateRequest;

  @override
  $Res call({
    Object? request = freezed,
  }) {
    return _then(UpdateRequest(
      request: request == freezed
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as ConsultationRequest,
    ));
  }

  @override
  $ConsultationRequestCopyWith<$Res> get request {
    return $ConsultationRequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$UpdateRequest implements UpdateRequest {
  _$UpdateRequest({required this.request});

  @override
  final ConsultationRequest request;

  @override
  String toString() {
    return 'ConsultationEvent.update(request: $request)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateRequest &&
            const DeepCollectionEquality().equals(other.request, request));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(request));

  @JsonKey(ignore: true)
  @override
  $UpdateRequestCopyWith<UpdateRequest> get copyWith =>
      _$UpdateRequestCopyWithImpl<UpdateRequest>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String phoneNumber) createRequest,
    required TResult Function() fetchRequest,
    required TResult Function(ConsultationRequest request) update,
    required TResult Function(ConsultationRequest request) delete,
  }) {
    return update(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name, String phoneNumber)? createRequest,
    TResult Function()? fetchRequest,
    TResult Function(ConsultationRequest request)? update,
    TResult Function(ConsultationRequest request)? delete,
  }) {
    return update?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String phoneNumber)? createRequest,
    TResult Function()? fetchRequest,
    TResult Function(ConsultationRequest request)? update,
    TResult Function(ConsultationRequest request)? delete,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateRequest value) createRequest,
    required TResult Function(FetchRequest value) fetchRequest,
    required TResult Function(UpdateRequest value) update,
    required TResult Function(DeleteRequest value) delete,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreateRequest value)? createRequest,
    TResult Function(FetchRequest value)? fetchRequest,
    TResult Function(UpdateRequest value)? update,
    TResult Function(DeleteRequest value)? delete,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateRequest value)? createRequest,
    TResult Function(FetchRequest value)? fetchRequest,
    TResult Function(UpdateRequest value)? update,
    TResult Function(DeleteRequest value)? delete,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class UpdateRequest implements ConsultationEvent {
  factory UpdateRequest({required ConsultationRequest request}) =
      _$UpdateRequest;

  ConsultationRequest get request;
  @JsonKey(ignore: true)
  $UpdateRequestCopyWith<UpdateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteRequestCopyWith<$Res> {
  factory $DeleteRequestCopyWith(
          DeleteRequest value, $Res Function(DeleteRequest) then) =
      _$DeleteRequestCopyWithImpl<$Res>;
  $Res call({ConsultationRequest request});

  $ConsultationRequestCopyWith<$Res> get request;
}

/// @nodoc
class _$DeleteRequestCopyWithImpl<$Res>
    extends _$ConsultationEventCopyWithImpl<$Res>
    implements $DeleteRequestCopyWith<$Res> {
  _$DeleteRequestCopyWithImpl(
      DeleteRequest _value, $Res Function(DeleteRequest) _then)
      : super(_value, (v) => _then(v as DeleteRequest));

  @override
  DeleteRequest get _value => super._value as DeleteRequest;

  @override
  $Res call({
    Object? request = freezed,
  }) {
    return _then(DeleteRequest(
      request: request == freezed
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as ConsultationRequest,
    ));
  }

  @override
  $ConsultationRequestCopyWith<$Res> get request {
    return $ConsultationRequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$DeleteRequest implements DeleteRequest {
  _$DeleteRequest({required this.request});

  @override
  final ConsultationRequest request;

  @override
  String toString() {
    return 'ConsultationEvent.delete(request: $request)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeleteRequest &&
            const DeepCollectionEquality().equals(other.request, request));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(request));

  @JsonKey(ignore: true)
  @override
  $DeleteRequestCopyWith<DeleteRequest> get copyWith =>
      _$DeleteRequestCopyWithImpl<DeleteRequest>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String phoneNumber) createRequest,
    required TResult Function() fetchRequest,
    required TResult Function(ConsultationRequest request) update,
    required TResult Function(ConsultationRequest request) delete,
  }) {
    return delete(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name, String phoneNumber)? createRequest,
    TResult Function()? fetchRequest,
    TResult Function(ConsultationRequest request)? update,
    TResult Function(ConsultationRequest request)? delete,
  }) {
    return delete?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String phoneNumber)? createRequest,
    TResult Function()? fetchRequest,
    TResult Function(ConsultationRequest request)? update,
    TResult Function(ConsultationRequest request)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateRequest value) createRequest,
    required TResult Function(FetchRequest value) fetchRequest,
    required TResult Function(UpdateRequest value) update,
    required TResult Function(DeleteRequest value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreateRequest value)? createRequest,
    TResult Function(FetchRequest value)? fetchRequest,
    TResult Function(UpdateRequest value)? update,
    TResult Function(DeleteRequest value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateRequest value)? createRequest,
    TResult Function(FetchRequest value)? fetchRequest,
    TResult Function(UpdateRequest value)? update,
    TResult Function(DeleteRequest value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class DeleteRequest implements ConsultationEvent {
  factory DeleteRequest({required ConsultationRequest request}) =
      _$DeleteRequest;

  ConsultationRequest get request;
  @JsonKey(ignore: true)
  $DeleteRequestCopyWith<DeleteRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
