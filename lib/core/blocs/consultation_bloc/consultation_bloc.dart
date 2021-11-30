import 'package:ecommers/core/blocs/consultation_bloc/consultation_event.dart';
import 'package:ecommers/core/blocs/consultation_bloc/consultation_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConsultationBloc extends Bloc<ConsultationEvent, ConsultationState> {
  ConsultationBloc(ConsultationState initialState)
      : super(ConsultationState.initState());

  Stream<ConsultationState> mapEventToState(ConsultationEvent event) async* {
    yield* event.map(
      createRequest: _createRequest,
    );
  }

  Stream<ConsultationState> _createRequest(CreateRequest event) async* {}

}
