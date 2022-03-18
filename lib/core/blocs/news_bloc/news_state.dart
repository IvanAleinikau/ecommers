import 'package:ecommers/core/model/news_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_state.freezed.dart';

@freezed
class NewsState with _$NewsState {
  const factory NewsState({
    @Default(false) bool isLoading,
    @Default([]) List<News> newsList,
    @Default(false) bool newsCreated,
  }) = _NewsState;
}
