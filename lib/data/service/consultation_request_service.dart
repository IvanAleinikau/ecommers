import 'package:ecommers/core/model/consultation_request_model.dart';
import 'package:ecommers/data/repository/consultation_request_repository.dart';
import 'package:get_it/get_it.dart';

class ConsultationRequestService{
  final _repository = GetIt.instance<ConsultationRequestRepository>();

  Future<String> create(ConsultationRequest consultationRequest) async {
    return await _repository.create(consultationRequest);
  }

  Future<List<ConsultationRequest>> read() async {
    return await _repository.read();
  }
}