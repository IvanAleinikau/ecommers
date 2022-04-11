import 'package:ecommers/core/blocs/dashboard/dashboard_state.dart';
import 'package:ecommers/data/repository/accessories_repository.dart';
import 'package:ecommers/data/repository/acoustics_repository.dart';
import 'package:ecommers/data/repository/vinyl_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class DashboardCubit extends Cubit<DashboardState> {
  DashboardCubit() : super(const DashboardState()) {
    onInit();
  }

  final _vinylRepo = GetIt.instance<VinylRepository>();
  final _acousticsRepo = GetIt.instance<AcousticsRepository>();
  final _accessoriesRepo = GetIt.instance<AccessoriesRepository>();

  void onInit() {
    _fetchVinyl();
    _fetchAcoustics();
    _fetchAccessories();
  }

  void _fetchVinyl() async {
    final result = await _vinylRepo.read();
    emit(state.copyWith(vinylCount: result.length));
  }

  void _fetchAcoustics() async {
    final result = await _acousticsRepo.read();
    emit(state.copyWith(acousticsCount: result.length));
  }

  void _fetchAccessories() async {
    final result = await _accessoriesRepo.read();
    emit(state.copyWith(accessoriesCount: result.length));
  }
}
