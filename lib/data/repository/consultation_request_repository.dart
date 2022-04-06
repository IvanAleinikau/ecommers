import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommers/core/model/consultation_request_model.dart';

class ConsultationRequestRepository {
  final _collection = FirebaseFirestore.instance.collection('consultation_request');
  late List<ConsultationRequest> list = [];

  Future<String> create(ConsultationRequest consultationRequest) async {
    await _collection.add(
      {
        'name': consultationRequest.name,
        'phone_number': consultationRequest.phoneNumber,
        'email': consultationRequest.email,
      },
    );
    return 'ConsultationRequest Made';
  }

  Future<List<ConsultationRequest>> read() async {
    list = [];
    final collection = await _collection.get();
    for (var doc in collection.docs) {
      ConsultationRequest item = ConsultationRequest(
        id: doc.id,
        name: doc['name'],
        email: doc['email'],
        phoneNumber: doc['phone_number'],
      );
      list.add(item);
    }
    return list;
  }

  Future<void> update(ConsultationRequest consultationRequest) async {
    await _collection.doc(consultationRequest.id).update({
      'name': consultationRequest.name,
      'email': consultationRequest.email,
      'phone_number': consultationRequest.phoneNumber,
    });
  }

  Future<void> delete(String id) async {
    await _collection.doc(id).delete();
  }
}
