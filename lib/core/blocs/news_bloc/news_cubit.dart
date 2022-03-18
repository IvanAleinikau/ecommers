import 'package:ecommers/app/common/enums/label.dart';
import 'package:ecommers/core/blocs/news_bloc/news_state.dart';
import 'package:ecommers/core/model/news_model.dart';
import 'package:ecommers/data/service/news_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit() : super(const NewsState()) {
    onInit();
  }

  final _service = GetIt.instance<NewsService>();

  void onInit() {
    _fetchNews();
  }

  void onCreateNews({required News news}) async {
    emit(state.copyWith(isLoading: true, newsCreated: false));
    final result = await _service.create(news: news);
    if (result == Label.successfully) {
      _fetchNews();
      emit(state.copyWith(isLoading: false, newsCreated: true));
    }
  }

  void _fetchNews() async {
    emit(state.copyWith(isLoading: true));
    final result = await _service.read();
    if (result.isNotEmpty) {
      emit(state.copyWith(isLoading: false, newsList: result));
    } else {
      emit(state.copyWith(isLoading: false));
    }
  }
}
