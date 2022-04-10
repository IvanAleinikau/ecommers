import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommers/app/common/enums/label.dart';
import 'package:ecommers/core/model/order_model.dart';

class OrderRepository {
  final _collection = FirebaseFirestore.instance.collection('order');
  late List<Order> _list = [];

  Future<Label> create({required Order order}) async {
    try {
      await _collection.add({
        'customerName': order.customerName,
        'customerPhone': order.customerPhone,
        'customerEmail': order.customerEmail,
        'customerCity': order.customerCity,
        'customerAddress': order.customerAddress,
        'orderTitle': order.orderTitle,
        'vendorCode': order.vendorCode,
      });
      return Label.successfully;
    } catch (_) {
      return Label.error;
    }
  }

  Future<List<Order>> read() async {
    _list = [];
    final collection = await _collection.get();
    for (var doc in collection.docs) {
      Order item = Order(
        id: doc.id,
        customerName: doc['customerName'],
        customerPhone: doc['customerPhone'],
        customerEmail: doc['customerEmail'],
        customerCity: doc['customerCity'],
        customerAddress: doc['customerAddress'],
        orderTitle: doc['orderTitle'],
        vendorCode: doc['vendorCode'],
      );
      _list.add(item);
    }
    return _list;
  }

  Future<void> delete(String id) async {
    await _collection.doc(id).delete();
  }
}
