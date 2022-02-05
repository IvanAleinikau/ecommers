import 'package:freezed_annotation/freezed_annotation.dart';

part 'consultation_event.freezed.dart';

@freezed
abstract class ConsultationEvent with _$ConsultationEvent {
  factory ConsultationEvent.createRequest({
    required String name,
    required String phoneNumber,
  }) = CreateRequest;

  factory ConsultationEvent.fetchRequest() = FetchRequest;
}
