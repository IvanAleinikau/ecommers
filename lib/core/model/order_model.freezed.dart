// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OrderTearOff {
  const _$OrderTearOff();

  _Order call(
      {String? id,
      required String customerName,
      required String customerPhone,
      required String customerEmail,
      required String customerCity,
      required String customerAddress,
      required String orderTitle,
      required String vendorCode}) {
    return _Order(
      id: id,
      customerName: customerName,
      customerPhone: customerPhone,
      customerEmail: customerEmail,
      customerCity: customerCity,
      customerAddress: customerAddress,
      orderTitle: orderTitle,
      vendorCode: vendorCode,
    );
  }
}

/// @nodoc
const $Order = _$OrderTearOff();

/// @nodoc
mixin _$Order {
  String? get id => throw _privateConstructorUsedError;
  String get customerName => throw _privateConstructorUsedError;
  String get customerPhone => throw _privateConstructorUsedError;
  String get customerEmail => throw _privateConstructorUsedError;
  String get customerCity => throw _privateConstructorUsedError;
  String get customerAddress => throw _privateConstructorUsedError;
  String get orderTitle => throw _privateConstructorUsedError;
  String get vendorCode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderCopyWith<Order> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCopyWith<$Res> {
  factory $OrderCopyWith(Order value, $Res Function(Order) then) =
      _$OrderCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String customerName,
      String customerPhone,
      String customerEmail,
      String customerCity,
      String customerAddress,
      String orderTitle,
      String vendorCode});
}

/// @nodoc
class _$OrderCopyWithImpl<$Res> implements $OrderCopyWith<$Res> {
  _$OrderCopyWithImpl(this._value, this._then);

  final Order _value;
  // ignore: unused_field
  final $Res Function(Order) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? customerName = freezed,
    Object? customerPhone = freezed,
    Object? customerEmail = freezed,
    Object? customerCity = freezed,
    Object? customerAddress = freezed,
    Object? orderTitle = freezed,
    Object? vendorCode = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      customerName: customerName == freezed
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      customerPhone: customerPhone == freezed
          ? _value.customerPhone
          : customerPhone // ignore: cast_nullable_to_non_nullable
              as String,
      customerEmail: customerEmail == freezed
          ? _value.customerEmail
          : customerEmail // ignore: cast_nullable_to_non_nullable
              as String,
      customerCity: customerCity == freezed
          ? _value.customerCity
          : customerCity // ignore: cast_nullable_to_non_nullable
              as String,
      customerAddress: customerAddress == freezed
          ? _value.customerAddress
          : customerAddress // ignore: cast_nullable_to_non_nullable
              as String,
      orderTitle: orderTitle == freezed
          ? _value.orderTitle
          : orderTitle // ignore: cast_nullable_to_non_nullable
              as String,
      vendorCode: vendorCode == freezed
          ? _value.vendorCode
          : vendorCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$OrderCopyWith<$Res> implements $OrderCopyWith<$Res> {
  factory _$OrderCopyWith(_Order value, $Res Function(_Order) then) =
      __$OrderCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String customerName,
      String customerPhone,
      String customerEmail,
      String customerCity,
      String customerAddress,
      String orderTitle,
      String vendorCode});
}

/// @nodoc
class __$OrderCopyWithImpl<$Res> extends _$OrderCopyWithImpl<$Res>
    implements _$OrderCopyWith<$Res> {
  __$OrderCopyWithImpl(_Order _value, $Res Function(_Order) _then)
      : super(_value, (v) => _then(v as _Order));

  @override
  _Order get _value => super._value as _Order;

  @override
  $Res call({
    Object? id = freezed,
    Object? customerName = freezed,
    Object? customerPhone = freezed,
    Object? customerEmail = freezed,
    Object? customerCity = freezed,
    Object? customerAddress = freezed,
    Object? orderTitle = freezed,
    Object? vendorCode = freezed,
  }) {
    return _then(_Order(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      customerName: customerName == freezed
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      customerPhone: customerPhone == freezed
          ? _value.customerPhone
          : customerPhone // ignore: cast_nullable_to_non_nullable
              as String,
      customerEmail: customerEmail == freezed
          ? _value.customerEmail
          : customerEmail // ignore: cast_nullable_to_non_nullable
              as String,
      customerCity: customerCity == freezed
          ? _value.customerCity
          : customerCity // ignore: cast_nullable_to_non_nullable
              as String,
      customerAddress: customerAddress == freezed
          ? _value.customerAddress
          : customerAddress // ignore: cast_nullable_to_non_nullable
              as String,
      orderTitle: orderTitle == freezed
          ? _value.orderTitle
          : orderTitle // ignore: cast_nullable_to_non_nullable
              as String,
      vendorCode: vendorCode == freezed
          ? _value.vendorCode
          : vendorCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Order implements _Order {
  _$_Order(
      {this.id,
      required this.customerName,
      required this.customerPhone,
      required this.customerEmail,
      required this.customerCity,
      required this.customerAddress,
      required this.orderTitle,
      required this.vendorCode});

  @override
  final String? id;
  @override
  final String customerName;
  @override
  final String customerPhone;
  @override
  final String customerEmail;
  @override
  final String customerCity;
  @override
  final String customerAddress;
  @override
  final String orderTitle;
  @override
  final String vendorCode;

  @override
  String toString() {
    return 'Order(id: $id, customerName: $customerName, customerPhone: $customerPhone, customerEmail: $customerEmail, customerCity: $customerCity, customerAddress: $customerAddress, orderTitle: $orderTitle, vendorCode: $vendorCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Order &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.customerName, customerName) &&
            const DeepCollectionEquality()
                .equals(other.customerPhone, customerPhone) &&
            const DeepCollectionEquality()
                .equals(other.customerEmail, customerEmail) &&
            const DeepCollectionEquality()
                .equals(other.customerCity, customerCity) &&
            const DeepCollectionEquality()
                .equals(other.customerAddress, customerAddress) &&
            const DeepCollectionEquality()
                .equals(other.orderTitle, orderTitle) &&
            const DeepCollectionEquality()
                .equals(other.vendorCode, vendorCode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(customerName),
      const DeepCollectionEquality().hash(customerPhone),
      const DeepCollectionEquality().hash(customerEmail),
      const DeepCollectionEquality().hash(customerCity),
      const DeepCollectionEquality().hash(customerAddress),
      const DeepCollectionEquality().hash(orderTitle),
      const DeepCollectionEquality().hash(vendorCode));

  @JsonKey(ignore: true)
  @override
  _$OrderCopyWith<_Order> get copyWith =>
      __$OrderCopyWithImpl<_Order>(this, _$identity);
}

abstract class _Order implements Order {
  factory _Order(
      {String? id,
      required String customerName,
      required String customerPhone,
      required String customerEmail,
      required String customerCity,
      required String customerAddress,
      required String orderTitle,
      required String vendorCode}) = _$_Order;

  @override
  String? get id;
  @override
  String get customerName;
  @override
  String get customerPhone;
  @override
  String get customerEmail;
  @override
  String get customerCity;
  @override
  String get customerAddress;
  @override
  String get orderTitle;
  @override
  String get vendorCode;
  @override
  @JsonKey(ignore: true)
  _$OrderCopyWith<_Order> get copyWith => throw _privateConstructorUsedError;
}
