import 'package:freezed_annotation/freezed_annotation.dart';

part 'acoustics_model.freezed.dart';

@freezed
class Acoustics with _$Acoustics {
  factory Acoustics({
    String? id,
    required String imageUrl,
    required String title,
    required String subtitle,
    required String cost,
  }) = _Acoustics;
}
