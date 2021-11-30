import 'package:freezed_annotation/freezed_annotation.dart';

part 'consultation_state.freezed.dart';

@freezed
abstract class ConsultationState with _$ConsultationState {
  factory ConsultationState.initState() = ConsultationInitState;
}