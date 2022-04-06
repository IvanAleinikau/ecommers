import 'package:ecommers/app/common/app_constants.dart';
import 'package:ecommers/core/blocs/consultation_bloc/consultation_event.dart';
import 'package:ecommers/core/blocs/consultation_bloc/consultation_state.dart';
import 'package:ecommers/core/model/consultation_request_model.dart';
import 'package:ecommers/data/repository/consultation_request_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class ConsultationBloc extends Bloc<ConsultationEvent, ConsultationState> {
  final _repository = GetIt.instance<ConsultationRequestRepository>();

  ConsultationBloc() : super(ConsultationState.initState()) {
    on<CreateRequest>((event, emit) async {
      await _repository.create(
        ConsultationRequest(
          name: event.name,
          phoneNumber: event.phoneNumber,
          email: FirebaseAuth.instance.currentUser?.email ?? emptyString,
        ),
      );
    });

    on<FetchRequest>((event, emit) async {
      emit(ConsultationState.content(await _repository.read()));
    });

    on<UpdateRequest>((event, emit) async {
      await _repository.update(event.request);
    });

    on<DeleteRequest>((event, emit) async {
      await _repository.delete(event.request.id!);
      emit(ConsultationState.content(await _repository.read()));
    });
  }
}
