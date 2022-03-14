import 'package:ecommers/data/repository/auth_repository.dart';
import 'package:get_it/get_it.dart';

class AuthService {
  final _repository = GetIt.instance<AuthRepository>();

  Future<String> create({required String email, required String password}) async {
    return await _repository.createAccount(email: email, password: password);
  }

  Future<String> singIn({required String email, required String password}) async {
    return await _repository.signIn(email: email, password: password);
  }

  Future<String> singInWithGoogle() async {
    return await _repository.signInWithGoogle();
  }

  Future<String> singOut() async {
    return await _repository.signOut();
  }
}
