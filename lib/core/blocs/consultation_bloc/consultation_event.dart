import 'package:freezed_annotation/freezed_annotation.dart';

part 'consultation_event.freezed.dart';

@freezed
abstract class ConsultationEvent with _$ConsultationEvent {
  factory ConsultationEvent.createRequest() = CreateRequest;

  factory ConsultationEvent.checkValidName(String name) = CheckValidName;

  factory ConsultationEvent.checkValidPhoneNumber(String phoneNumber) = CheckValidPhoneNumber;
}
