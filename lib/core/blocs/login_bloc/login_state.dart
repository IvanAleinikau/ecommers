import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initState() = _InitState;

  const factory LoginState.successfully() = _Successfully;

  const factory LoginState.error({
    required String message,
  }) = _Error;

  const factory LoginState.singOut() = _SingOut;
}
