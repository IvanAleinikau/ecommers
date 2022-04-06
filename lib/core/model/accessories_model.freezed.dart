// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'accessories_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AccessoriesTearOff {
  const _$AccessoriesTearOff();

  _Accessories call(
      {String? id,
      required String imageUrl,
      required String title,
      required String subtitle,
      required String cost}) {
    return _Accessories(
      id: id,
      imageUrl: imageUrl,
      title: title,
      subtitle: subtitle,
      cost: cost,
    );
  }
}

/// @nodoc
const $Accessories = _$AccessoriesTearOff();

/// @nodoc
mixin _$Accessories {
  String? get id => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get subtitle => throw _privateConstructorUsedError;
  String get cost => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccessoriesCopyWith<Accessories> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccessoriesCopyWith<$Res> {
  factory $AccessoriesCopyWith(
          Accessories value, $Res Function(Accessories) then) =
      _$AccessoriesCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String imageUrl,
      String title,
      String subtitle,
      String cost});
}

/// @nodoc
class _$AccessoriesCopyWithImpl<$Res> implements $AccessoriesCopyWith<$Res> {
  _$AccessoriesCopyWithImpl(this._value, this._then);

  final Accessories _value;
  // ignore: unused_field
  final $Res Function(Accessories) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? imageUrl = freezed,
    Object? title = freezed,
    Object? subtitle = freezed,
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
      cost: cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AccessoriesCopyWith<$Res>
    implements $AccessoriesCopyWith<$Res> {
  factory _$AccessoriesCopyWith(
          _Accessories value, $Res Function(_Accessories) then) =
      __$AccessoriesCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String imageUrl,
      String title,
      String subtitle,
      String cost});
}

/// @nodoc
class __$AccessoriesCopyWithImpl<$Res> extends _$AccessoriesCopyWithImpl<$Res>
    implements _$AccessoriesCopyWith<$Res> {
  __$AccessoriesCopyWithImpl(
      _Accessories _value, $Res Function(_Accessories) _then)
      : super(_value, (v) => _then(v as _Accessories));

  @override
  _Accessories get _value => super._value as _Accessories;

  @override
  $Res call({
    Object? id = freezed,
    Object? imageUrl = freezed,
    Object? title = freezed,
    Object? subtitle = freezed,
    Object? cost = freezed,
  }) {
    return _then(_Accessories(
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
      cost: cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Accessories implements _Accessories {
  _$_Accessories(
      {this.id,
      required this.imageUrl,
      required this.title,
      required this.subtitle,
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
  final String cost;

  @override
  String toString() {
    return 'Accessories(id: $id, imageUrl: $imageUrl, title: $title, subtitle: $subtitle, cost: $cost)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Accessories &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.subtitle, subtitle) &&
            const DeepCollectionEquality().equals(other.cost, cost));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(subtitle),
      const DeepCollectionEquality().hash(cost));

  @JsonKey(ignore: true)
  @override
  _$AccessoriesCopyWith<_Accessories> get copyWith =>
      __$AccessoriesCopyWithImpl<_Accessories>(this, _$identity);
}

abstract class _Accessories implements Accessories {
  factory _Accessories(
      {String? id,
      required String imageUrl,
      required String title,
      required String subtitle,
      required String cost}) = _$_Accessories;

  @override
  String? get id;
  @override
  String get imageUrl;
  @override
  String get title;
  @override
  String get subtitle;
  @override
  String get cost;
  @override
  @JsonKey(ignore: true)
  _$AccessoriesCopyWith<_Accessories> get copyWith =>
      throw _privateConstructorUsedError;
}
