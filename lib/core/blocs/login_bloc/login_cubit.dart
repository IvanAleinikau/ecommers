import 'package:ecommers/app/common/dictionary.dart';
import 'package:ecommers/core/blocs/login_bloc/login_state.dart';
import 'package:ecommers/data/service/auth_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class LoginCubit extends Cubit<LoginState> {
  User? user = FirebaseAuth.instance.currentUser;

  final service = GetIt.instance<AuthService>();

  LoginCubit() : super(const LoginState.initState()) {
    init();
  }

  void init() {
    if (user != null) {
      emit(const LoginState.successfully());
    }
  }

  void onSingIn({required String email, required String password}) async {
    emit(const LoginState.loading());
    final result = await service.singIn(email: email, password: password);
    if (result == welcome) {
      emit(const LoginState.successfully());
    } else {
      emit(LoginState.error(message: result));
    }
  }

  void singOut() async {
    final result = await service.singOut();
    if (result == singOUt) {
      emit(const LoginState.singOut());
    }
  }
}
