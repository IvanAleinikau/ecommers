import 'package:ecommers/app/common/enums/label.dart';
import 'package:ecommers/core/blocs/accessories/accessories_state.dart';
import 'package:ecommers/core/model/accessories_model.dart';
import 'package:ecommers/data/repository/accessories_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class AccessoriesCubit extends Cubit<AccessoriesState> {
  AccessoriesCubit() : super(const AccessoriesState()) {
    onInit();
  }

  final _repository = GetIt.instance<AccessoriesRepository>();

  void onInit() {
    _fetchAccessories();
  }

  void onCreateAccessories({required Accessories accessories}) async {
    emit(state.copyWith(isLoading: true, accessoriesCreated: false));
    final result = await _repository.create(accessories: accessories);
    if (result == Label.successfully) {
      _fetchAccessories();
      emit(state.copyWith(isLoading: false, accessoriesCreated: true));
    }
  }

  void onUpdateAccessories({required Accessories accessories}) async {
    emit(state.copyWith(isLoading: true, accessoriesCreated: false));
    await _repository.update(accessories);
    _fetchAccessories();
    emit(state.copyWith(isLoading: false, accessoriesCreated: true));
  }

  void onDeleteAccessories({required Accessories accessories}) async {
    emit(state.copyWith(isLoading: true, accessoriesCreated: false));
    await _repository.delete(accessories.id ?? '');
    _fetchAccessories();
    emit(state.copyWith(isLoading: false, accessoriesCreated: true));
  }

  void _fetchAccessories() async {
    emit(state.copyWith(isLoading: true));
    final result = await _repository.read();
    if (result.isNotEmpty) {
      emit(state.copyWith(isLoading: false, accessoriesList: result));
    } else {
      emit(state.copyWith(isLoading: false));
    }
  }
}
