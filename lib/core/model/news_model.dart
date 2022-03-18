import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_model.freezed.dart';

@freezed
class News with _$News {
  factory News({
    String? id,
    required String title,
    required String subtitle,
    required String imageUrl,
    required DateTime date,
  }) = _News;
}
