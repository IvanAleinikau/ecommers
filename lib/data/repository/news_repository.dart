import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommers/app/common/enums/label.dart';
import 'package:ecommers/core/model/news_model.dart';
import 'package:intl/intl.dart';

class NewsRepository {
  final _collection = FirebaseFirestore.instance.collection('news');
  late List<News> _list = [];

  Future<Label> create({required News news}) async {
    try {
      await _collection.add({
        'title': news.title,
        'subtitle': news.subtitle,
        'imageUrl': news.imageUrl,
        'date': DateFormat('yyyy-MM-dd HH:mm:ss').format(news.date),
      });
      return Label.successfully;
    } catch (_) {
      return Label.error;
    }
  }

  Future<List<News>> read() async {
    _list = [];
    final collection = await _collection.get();
    for (var doc in collection.docs) {
      News item = News(
        id: doc.id,
        title: doc['title'],
        subtitle: doc['subtitle'],
        date: DateFormat("yyyy-MM-dd HH:mm:ss").parse(doc['date']),
        imageUrl: doc['imageUrl'],
      );
      _list.add(item);
    }
    return _list;
  }

  Future<void> update(News news) async {
    await _collection.doc(news.id).update({
      'title': news.title,
      'subtitle': news.subtitle,
      'imageUrl': news.imageUrl,
    });
  }

  Future<void> delete(String id) async {
    await _collection.doc(id).delete();
  }
}
