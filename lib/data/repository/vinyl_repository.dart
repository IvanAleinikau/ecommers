import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommers/app/common/enums/label.dart';
import 'package:ecommers/core/model/vinyl_model.dart';

class VinylRepository {
  final _collection = FirebaseFirestore.instance.collection('vinyl');
  late List<Vinyl> _list = [];

  Future<Label> create({required Vinyl vinyl}) async {
    try {
      await _collection.add({
        'title': vinyl.title,
        'cost': vinyl.cost,
        'imageUrl': vinyl.imageUrl,
        'year': vinyl.year,
      });
      return Label.successfully;
    } catch (_) {
      return Label.error;
    }
  }

  Future<List<Vinyl>> read() async {
    _list = [];
    final collection = await _collection.get();
    for (var doc in collection.docs) {
      Vinyl item = Vinyl(
        id: doc.id,
        title: doc['title'],
        cost: doc['cost'],
        year: doc['year'],
        imageUrl: doc['imageUrl'],
      );
      _list.add(item);
    }
    return _list;
  }

  Future<void> update(Vinyl vinyl) async {
    await _collection.doc(vinyl.id).update({
      'title': vinyl.title,
      'year': vinyl.year,
      'cost': vinyl.cost,
      'imageUrl': vinyl.imageUrl,
    });
  }

  Future<void> delete(String id) async {
    await _collection.doc(id).delete();
  }
}
