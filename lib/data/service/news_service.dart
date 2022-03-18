import 'package:ecommers/app/common/enums/label.dart';
import 'package:ecommers/core/model/news_model.dart';
import 'package:ecommers/data/repository/news_repository.dart';
import 'package:get_it/get_it.dart';

class NewsService {
  final _repository = GetIt.instance<NewsRepository>();

  Future<Label> create({required News news}) async {
    return await _repository.create(news: news);
  }

  Future<List<News>> read() async {
    return await _repository.read();
  }

  Future<void> update() async {
    await _repository.update();
  }

  Future<void> delete() async {
    await _repository.delete();
  }
}
