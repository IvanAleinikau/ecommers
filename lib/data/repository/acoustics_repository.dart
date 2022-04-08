import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommers/app/common/enums/label.dart';
import 'package:ecommers/core/model/acoustics_model.dart';

class AcousticsRepository {
  final _collection = FirebaseFirestore.instance.collection('acoustics');
  late List<Acoustics> _list = [];

  Future<Label> create({required Acoustics acoustics}) async {
    try {
      await _collection.add({
        'title': acoustics.title,
        'subtitle': acoustics.subtitle,
        'imageUrl': acoustics.imageUrl,
        'cost': acoustics.cost,
        'description': acoustics.description,
      });
      return Label.successfully;
    } catch (_) {
      return Label.error;
    }
  }

  Future<List<Acoustics>> read() async {
    _list = [];
    final collection = await _collection.get();
    for (var doc in collection.docs) {
      Acoustics item = Acoustics(
        id: doc.id,
        title: doc['title'],
        cost: doc['cost'],
        subtitle: doc['subtitle'],
        imageUrl: doc['imageUrl'],
        description: doc['description'],
      );
      _list.add(item);
    }
    return _list;
  }

  Future<void> update(Acoustics acoustics) async {
    await _collection.doc(acoustics.id).update({
      'title': acoustics.title,
      'subtitle': acoustics.subtitle,
      'cost': acoustics.cost,
      'imageUrl': acoustics.imageUrl,
      'description': acoustics.description,
    });
  }

  Future<void> delete(String id) async {
    await _collection.doc(id).delete();
  }
}
