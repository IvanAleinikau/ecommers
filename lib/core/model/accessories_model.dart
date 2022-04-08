import 'package:freezed_annotation/freezed_annotation.dart';

part 'accessories_model.freezed.dart';

@freezed
class Accessories with _$Accessories {
  factory Accessories({
    String? id,
    required String imageUrl,
    required String title,
    required String subtitle,
    required String description,
    required String cost,
  }) = _Accessories;
}
