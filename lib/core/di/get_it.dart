import 'package:ecommers/data/repository/auth_repository.dart';
import 'package:ecommers/data/repository/consultation_request_repository.dart';
import 'package:ecommers/data/service/auth_service.dart';
import 'package:ecommers/data/service/consultation_request_service.dart';
import 'package:get_it/get_it.dart';

class SetupGetIt {
  static setup() {
    GetIt.instance.registerSingleton(ConsultationRequestRepository());
    GetIt.instance.registerSingleton(ConsultationRequestService());
    GetIt.instance.registerSingleton(AuthRepository());
    GetIt.instance.registerSingleton(AuthService());
  }
}
