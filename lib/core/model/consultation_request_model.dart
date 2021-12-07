import 'package:freezed_annotation/freezed_annotation.dart';

part 'consultation_request_model.freezed.dart';

@freezed
class ConsultationRequest with _$ConsultationRequest{
  factory ConsultationRequest({
    required String name,
    required String phoneNumber,
    required String email,
  }) = _ConsultationRequest;

}