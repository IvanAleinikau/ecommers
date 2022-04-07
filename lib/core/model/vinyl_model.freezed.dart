// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'vinyl_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$VinylTearOff {
  const _$VinylTearOff();

  _Vinyl call(
      {String? id,
      required String imageUrl,
      required String title,
      required String year,
      required String cost,
      required String description}) {
    return _Vinyl(
      id: id,
      imageUrl: imageUrl,
      title: title,
      year: year,
      cost: cost,
      description: description,
    );
  }
}

/// @nodoc
const $Vinyl = _$VinylTearOff();

/// @nodoc
mixin _$Vinyl {
  String? get id => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get year => throw _privateConstructorUsedError;
  String get cost => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VinylCopyWith<Vinyl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VinylCopyWith<$Res> {
  factory $VinylCopyWith(Vinyl value, $Res Function(Vinyl) then) =
      _$VinylCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String imageUrl,
      String title,
      String year,
      String cost,
      String description});
}

/// @nodoc
class _$VinylCopyWithImpl<$Res> implements $VinylCopyWith<$Res> {
  _$VinylCopyWithImpl(this._value, this._then);

  final Vinyl _value;
  // ignore: unused_field
  final $Res Function(Vinyl) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? imageUrl = freezed,
    Object? title = freezed,
    Object? year = freezed,
    Object? cost = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      year: year == freezed
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String,
      cost: cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$VinylCopyWith<$Res> implements $VinylCopyWith<$Res> {
  factory _$VinylCopyWith(_Vinyl value, $Res Function(_Vinyl) then) =
      __$VinylCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String imageUrl,
      String title,
      String year,
      String cost,
      String description});
}

/// @nodoc
class __$VinylCopyWithImpl<$Res> extends _$VinylCopyWithImpl<$Res>
    implements _$VinylCopyWith<$Res> {
  __$VinylCopyWithImpl(_Vinyl _value, $Res Function(_Vinyl) _then)
      : super(_value, (v) => _then(v as _Vinyl));

  @override
  _Vinyl get _value => super._value as _Vinyl;

  @override
  $Res call({
    Object? id = freezed,
    Object? imageUrl = freezed,
    Object? title = freezed,
    Object? year = freezed,
    Object? cost = freezed,
    Object? description = freezed,
  }) {
    return _then(_Vinyl(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      year: year == freezed
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String,
      cost: cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Vinyl implements _Vinyl {
  _$_Vinyl(
      {this.id,
      required this.imageUrl,
      required this.title,
      required this.year,
      required this.cost,
      required this.description});

  @override
  final String? id;
  @override
  final String imageUrl;
  @override
  final String title;
  @override
  final String year;
  @override
  final String cost;
  @override
  final String description;

  @override
  String toString() {
    return 'Vinyl(id: $id, imageUrl: $imageUrl, title: $title, year: $year, cost: $cost, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Vinyl &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.year, year) &&
            const DeepCollectionEquality().equals(other.cost, cost) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(year),
      const DeepCollectionEquality().hash(cost),
      const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$VinylCopyWith<_Vinyl> get copyWith =>
      __$VinylCopyWithImpl<_Vinyl>(this, _$identity);
}

abstract class _Vinyl implements Vinyl {
  factory _Vinyl(
      {String? id,
      required String imageUrl,
      required String title,
      required String year,
      required String cost,
      required String description}) = _$_Vinyl;

  @override
  String? get id;
  @override
  String get imageUrl;
  @override
  String get title;
  @override
  String get year;
  @override
  String get cost;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$VinylCopyWith<_Vinyl> get copyWith => throw _privateConstructorUsedError;
}
