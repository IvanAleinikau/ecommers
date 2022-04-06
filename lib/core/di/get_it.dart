import 'package:ecommers/data/repository/accessories_repository.dart';
import 'package:ecommers/data/repository/acoustics_repository.dart';
import 'package:ecommers/data/repository/auth_repository.dart';
import 'package:ecommers/data/repository/consultation_request_repository.dart';
import 'package:ecommers/data/repository/news_repository.dart';
import 'package:ecommers/data/repository/vinyl_repository.dart';
import 'package:ecommers/data/service/auth_service.dart';
import 'package:ecommers/data/service/consultation_request_service.dart';
import 'package:ecommers/data/service/news_service.dart';
import 'package:get_it/get_it.dart';

class SetupGetIt {
  static setup() {
    GetIt.instance.registerSingleton(ConsultationRequestRepository());
    GetIt.instance.registerSingleton(ConsultationRequestService());
    GetIt.instance.registerSingleton(AuthRepository());
    GetIt.instance.registerSingleton(AuthService());
    GetIt.instance.registerSingleton(NewsRepository());
    GetIt.instance.registerSingleton(NewsService());
    GetIt.instance.registerSingleton(VinylRepository());
    GetIt.instance.registerSingleton(AcousticsRepository());
    GetIt.instance.registerSingleton(AccessoriesRepository());
  }
}
