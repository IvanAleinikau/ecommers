import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommers/core/model/consultation_request_model.dart';

class ConsultationRequestRepository{
  final _collection = FirebaseFirestore.instance.collection('consultation_request');

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
}