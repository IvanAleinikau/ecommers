// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'news_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NewsStateTearOff {
  const _$NewsStateTearOff();

  _NewsState call(
      {bool isLoading = false,
      List<News> newsList = const [],
      bool newsCreated = false}) {
    return _NewsState(
      isLoading: isLoading,
      newsList: newsList,
      newsCreated: newsCreated,
    );
  }
}

/// @nodoc
const $NewsState = _$NewsStateTearOff();

/// @nodoc
mixin _$NewsState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<News> get newsList => throw _privateConstructorUsedError;
  bool get newsCreated => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewsStateCopyWith<NewsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsStateCopyWith<$Res> {
  factory $NewsStateCopyWith(NewsState value, $Res Function(NewsState) then) =
      _$NewsStateCopyWithImpl<$Res>;
  $Res call({bool isLoading, List<News> newsList, bool newsCreated});
}

/// @nodoc
class _$NewsStateCopyWithImpl<$Res> implements $NewsStateCopyWith<$Res> {
  _$NewsStateCopyWithImpl(this._value, this._then);

  final NewsState _value;
  // ignore: unused_field
  final $Res Function(NewsState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? newsList = freezed,
    Object? newsCreated = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      newsList: newsList == freezed
          ? _value.newsList
          : newsList // ignore: cast_nullable_to_non_nullable
              as List<News>,
      newsCreated: newsCreated == freezed
          ? _value.newsCreated
          : newsCreated // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$NewsStateCopyWith<$Res> implements $NewsStateCopyWith<$Res> {
  factory _$NewsStateCopyWith(
          _NewsState value, $Res Function(_NewsState) then) =
      __$NewsStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, List<News> newsList, bool newsCreated});
}

/// @nodoc
class __$NewsStateCopyWithImpl<$Res> extends _$NewsStateCopyWithImpl<$Res>
    implements _$NewsStateCopyWith<$Res> {
  __$NewsStateCopyWithImpl(_NewsState _value, $Res Function(_NewsState) _then)
      : super(_value, (v) => _then(v as _NewsState));

  @override
  _NewsState get _value => super._value as _NewsState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? newsList = freezed,
    Object? newsCreated = freezed,
  }) {
    return _then(_NewsState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      newsList: newsList == freezed
          ? _value.newsList
          : newsList // ignore: cast_nullable_to_non_nullable
              as List<News>,
      newsCreated: newsCreated == freezed
          ? _value.newsCreated
          : newsCreated // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_NewsState implements _NewsState {
  const _$_NewsState(
      {this.isLoading = false,
      this.newsList = const [],
      this.newsCreated = false});

  @JsonKey()
  @override
  final bool isLoading;
  @JsonKey()
  @override
  final List<News> newsList;
  @JsonKey()
  @override
  final bool newsCreated;

  @override
  String toString() {
    return 'NewsState(isLoading: $isLoading, newsList: $newsList, newsCreated: $newsCreated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NewsState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.newsList, newsList) &&
            const DeepCollectionEquality()
                .equals(other.newsCreated, newsCreated));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(newsList),
      const DeepCollectionEquality().hash(newsCreated));

  @JsonKey(ignore: true)
  @override
  _$NewsStateCopyWith<_NewsState> get copyWith =>
      __$NewsStateCopyWithImpl<_NewsState>(this, _$identity);
}

abstract class _NewsState implements NewsState {
  const factory _NewsState(
      {bool isLoading, List<News> newsList, bool newsCreated}) = _$_NewsState;

  @override
  bool get isLoading;
  @override
  List<News> get newsList;
  @override
  bool get newsCreated;
  @override
  @JsonKey(ignore: true)
  _$NewsStateCopyWith<_NewsState> get copyWith =>
      throw _privateConstructorUsedError;
}
