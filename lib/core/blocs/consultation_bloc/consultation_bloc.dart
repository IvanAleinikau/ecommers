import 'package:ecommers/core/blocs/consultation_bloc/consultation_event.dart';
import 'package:ecommers/core/blocs/consultation_bloc/consultation_state.dart';
import 'package:ecommers/core/model/consultation_request_model.dart';
import 'package:ecommers/data/service/consultation_request_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class ConsultationBloc extends Bloc<ConsultationEvent, ConsultationState> {
  final service = GetIt.instance<ConsultationRequestService>();

  ConsultationBloc(ConsultationState initialState)
      : super(ConsultationState.initState());

  @override
  Stream<ConsultationState> mapEventToState(ConsultationEvent event) async* {
    yield* event.map(
      createRequest: _createRequest,
    );
  }

  Stream<ConsultationState> _createRequest(CreateRequest event) async* {
    await service.create(
      ConsultationRequest(
        name: event.name,
        phoneNumber: event.phoneNumber,
        email: 'test@mail.ru',
      ),
    );
  }
}
