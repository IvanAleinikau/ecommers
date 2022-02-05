import 'package:ecommers/core/blocs/consultation_bloc/consultation_event.dart';
import 'package:ecommers/core/blocs/consultation_bloc/consultation_state.dart';
import 'package:ecommers/core/model/consultation_request_model.dart';
import 'package:ecommers/data/service/consultation_request_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class ConsultationBloc extends Bloc<ConsultationEvent, ConsultationState> {
  final service = GetIt.instance<ConsultationRequestService>();

  ConsultationBloc() : super(ConsultationState.initState()) {
    on<CreateRequest>((event, emit) async {
      await service.create(
        ConsultationRequest(
          name: event.name,
          phoneNumber: event.phoneNumber,
          email: 'test@mail.ru',
        ),
      );
    });

    on<FetchRequest>((event, emit) async {
      emit(ConsultationState.content(await service.read()));
    });
  }
}
