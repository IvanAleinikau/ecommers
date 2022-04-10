import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_model.freezed.dart';

@freezed
class Order with _$Order {
  factory Order({
    String? id,
    required String customerName,
    required String customerPhone,
    required String customerEmail,
    required String customerCity,
    required String customerAddress,
    required String orderTitle,
    required String vendorCode,
  }) = _Order;
}
