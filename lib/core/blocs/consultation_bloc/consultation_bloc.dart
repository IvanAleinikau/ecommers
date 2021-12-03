import 'package:ecommers/core/blocs/consultation_bloc/consultation_event.dart';
import 'package:ecommers/core/blocs/consultation_bloc/consultation_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConsultationBloc extends Bloc<ConsultationEvent, ConsultationState> {
  ConsultationBloc(ConsultationState initialState)
      : super(ConsultationState.initState());

  @override
  Stream<ConsultationState> mapEventToState(ConsultationEvent event) async* {
    yield* event.map(
      createRequest: _createRequest,
      checkValidName: _checkValidName,
      checkValidPhoneNumber: _checkValidPhoneNumber,
    );
  }

  Stream<ConsultationState> _createRequest(CreateRequest event) async* {}

  Stream<ConsultationState> _checkValidName(CheckValidName event) async* {
    if (event.name.isNotEmpty) {
      yield state.maybeMap(
        isValid: (_) {
          return  _.copyWith(isNameValid: true);
        },
        orElse: () {
          return state;
        },
      );
    }
  }

  Stream<ConsultationState> _checkValidPhoneNumber(
      CheckValidPhoneNumber event) async* {
    if (event.phoneNumber.isNotEmpty) {
      yield state.maybeMap(
        isValid: (_) {
          return  _.copyWith(isPhoneNumberValid: true);
        },
        orElse: () {
          return state;
        },
      );
    }
  }
}
