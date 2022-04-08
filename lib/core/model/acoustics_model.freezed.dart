// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'acoustics_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AcousticsTearOff {
  const _$AcousticsTearOff();

  _Acoustics call(
      {String? id,
      required String imageUrl,
      required String title,
      required String subtitle,
      required String description,
      required String cost}) {
    return _Acoustics(
      id: id,
      imageUrl: imageUrl,
      title: title,
      subtitle: subtitle,
      description: description,
      cost: cost,
    );
  }
}

/// @nodoc
const $Acoustics = _$AcousticsTearOff();

/// @nodoc
mixin _$Acoustics {
  String? get id => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get subtitle => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get cost => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AcousticsCopyWith<Acoustics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AcousticsCopyWith<$Res> {
  factory $AcousticsCopyWith(Acoustics value, $Res Function(Acoustics) then) =
      _$AcousticsCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String imageUrl,
      String title,
      String subtitle,
      String description,
      String cost});
}

/// @nodoc
class _$AcousticsCopyWithImpl<$Res> implements $AcousticsCopyWith<$Res> {
  _$AcousticsCopyWithImpl(this._value, this._then);

  final Acoustics _value;
  // ignore: unused_field
  final $Res Function(Acoustics) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? imageUrl = freezed,
    Object? title = freezed,
    Object? subtitle = freezed,
    Object? description = freezed,
    Object? cost = freezed,
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
      subtitle: subtitle == freezed
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      cost: cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AcousticsCopyWith<$Res> implements $AcousticsCopyWith<$Res> {
  factory _$AcousticsCopyWith(
          _Acoustics value, $Res Function(_Acoustics) then) =
      __$AcousticsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String imageUrl,
      String title,
      String subtitle,
      String description,
      String cost});
}

/// @nodoc
class __$AcousticsCopyWithImpl<$Res> extends _$AcousticsCopyWithImpl<$Res>
    implements _$AcousticsCopyWith<$Res> {
  __$AcousticsCopyWithImpl(_Acoustics _value, $Res Function(_Acoustics) _then)
      : super(_value, (v) => _then(v as _Acoustics));

  @override
  _Acoustics get _value => super._value as _Acoustics;

  @override
  $Res call({
    Object? id = freezed,
    Object? imageUrl = freezed,
    Object? title = freezed,
    Object? subtitle = freezed,
    Object? description = freezed,
    Object? cost = freezed,
  }) {
    return _then(_Acoustics(
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
      subtitle: subtitle == freezed
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      cost: cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Acoustics implements _Acoustics {
  _$_Acoustics(
      {this.id,
      required this.imageUrl,
      required this.title,
      required this.subtitle,
      required this.description,
      required this.cost});

  @override
  final String? id;
  @override
  final String imageUrl;
  @override
  final String title;
  @override
  final String subtitle;
  @override
  final String description;
  @override
  final String cost;

  @override
  String toString() {
    return 'Acoustics(id: $id, imageUrl: $imageUrl, title: $title, subtitle: $subtitle, description: $description, cost: $cost)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Acoustics &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.subtitle, subtitle) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.cost, cost));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(subtitle),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(cost));

  @JsonKey(ignore: true)
  @override
  _$AcousticsCopyWith<_Acoustics> get copyWith =>
      __$AcousticsCopyWithImpl<_Acoustics>(this, _$identity);
}

abstract class _Acoustics implements Acoustics {
  factory _Acoustics(
      {String? id,
      required String imageUrl,
      required String title,
      required String subtitle,
      required String description,
      required String cost}) = _$_Acoustics;

  @override
  String? get id;
  @override
  String get imageUrl;
  @override
  String get title;
  @override
  String get subtitle;
  @override
  String get description;
  @override
  String get cost;
  @override
  @JsonKey(ignore: true)
  _$AcousticsCopyWith<_Acoustics> get copyWith =>
      throw _privateConstructorUsedError;
}
