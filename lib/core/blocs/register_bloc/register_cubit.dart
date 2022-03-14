import 'package:ecommers/app/common/dictionary.dart';
import 'package:ecommers/core/blocs/register_bloc/register_state.dart';
import 'package:ecommers/data/service/auth_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final service = GetIt.instance<AuthService>();

  RegisterCubit() : super(const RegisterState.initState()) {
    init();
  }

  void init() {}

  void onRegister({required String email, required String password}) async {
    emit(const RegisterState.loading());
    final result = await service.create(email: email, password: password);
    if (result == accountCreated) {
      emit(const RegisterState.successfully());
    } else {
      emit(RegisterState.error(message: result));
    }
  }
}
