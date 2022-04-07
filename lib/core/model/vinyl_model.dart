import 'package:freezed_annotation/freezed_annotation.dart';

part 'vinyl_model.freezed.dart';

@freezed
class Vinyl with _$Vinyl {
  factory Vinyl({
    String? id,
    required String imageUrl,
    required String title,
    required String year,
    required String cost,
    required String description,
  }) = _Vinyl;
}
