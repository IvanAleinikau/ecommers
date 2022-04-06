import 'package:ecommers/core/model/consultation_request_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'consultation_event.freezed.dart';

@freezed
abstract class ConsultationEvent with _$ConsultationEvent {
  factory ConsultationEvent.createRequest({
    required String name,
    required String phoneNumber,
  }) = CreateRequest;

  factory ConsultationEvent.fetchRequest() = FetchRequest;

  factory ConsultationEvent.update({required ConsultationRequest request}) = UpdateRequest;

  factory ConsultationEvent.delete({required ConsultationRequest request}) = DeleteRequest;
}
