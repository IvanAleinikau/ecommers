import 'package:ecommers/app/common/enums/label.dart';
import 'package:ecommers/core/blocs/acoustics_bloc/acoustics_state.dart';
import 'package:ecommers/core/model/acoustics_model.dart';
import 'package:ecommers/data/repository/acoustics_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class AcousticsCubit extends Cubit<AcousticsState> {
  AcousticsCubit() : super(const AcousticsState()) {
    onInit();
  }

  final _repository = GetIt.instance<AcousticsRepository>();

  void onInit() {
    _fetchAcoustics();
  }

  void onCreateAcoustics({required Acoustics acoustics}) async {
    emit(state.copyWith(isLoading: true, acousticsCreated: false));
    final result = await _repository.create(acoustics: acoustics);
    if (result == Label.successfully) {
      _fetchAcoustics();
      emit(state.copyWith(isLoading: false, acousticsCreated: true));
    }
  }

  void _fetchAcoustics() async {
    emit(state.copyWith(isLoading: true));
    final result = await _repository.read();
    if (result.isNotEmpty) {
      emit(state.copyWith(isLoading: false, acousticsList: result));
    } else {
      emit(state.copyWith(isLoading: false));
    }
  }
}
