import 'package:ecommers/app/common/enums/label.dart';
import 'package:ecommers/core/blocs/vinyl/vinyl_state.dart';
import 'package:ecommers/core/model/vinyl_model.dart';
import 'package:ecommers/data/repository/vinyl_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class VinylCubit extends Cubit<VinylState> {
  VinylCubit() : super(const VinylState()) {
    onInit();
  }

  final _repository = GetIt.instance<VinylRepository>();

  void onInit() {
    _fetchVinyl();
  }

  void onCreateVinyl({required Vinyl vinyl}) async {
    emit(state.copyWith(isLoading: true, vinylCreated: false));
    final result = await _repository.create(vinyl: vinyl);
    if (result == Label.successfully) {
      _fetchVinyl();
      emit(state.copyWith(isLoading: false, vinylCreated: true));
    }
  }

  void onUpdateVinyl({required Vinyl vinyl}) async {
    emit(state.copyWith(isLoading: true, vinylCreated: false));
    await _repository.update(vinyl);
    _fetchVinyl();
    emit(state.copyWith(isLoading: false, vinylCreated: true));
  }

  void onDeleteVinyl({required Vinyl vinyl}) async {
    emit(state.copyWith(isLoading: true, vinylCreated: false));
    await _repository.delete(vinyl.id ?? '');
    _fetchVinyl();
    emit(state.copyWith(isLoading: false, vinylCreated: true));
  }

  void _fetchVinyl() async {
    emit(state.copyWith(isLoading: true));
    final result = await _repository.read();
    if (result.isNotEmpty) {
      emit(state.copyWith(isLoading: false, vinylList: result));
    } else {
      emit(state.copyWith(isLoading: false));
    }
  }
}
