import 'package:freezed_annotation/freezed_annotation.dart';

part 'consultation_request_model.freezed.dart';

@freezed
class ConsultationRequest with _$ConsultationRequest {
  factory ConsultationRequest({
    String? id,
    required String name,
    required String phoneNumber,
    required String email,
  }) = _ConsultationRequest;
}
