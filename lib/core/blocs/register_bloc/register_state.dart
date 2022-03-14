import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_state.freezed.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState.initState() = _InitState;

  const factory RegisterState.successfully() = _Successfully;

  const factory RegisterState.error({required String message}) = _Error;

  const factory RegisterState.loading() = _Loading;
}
