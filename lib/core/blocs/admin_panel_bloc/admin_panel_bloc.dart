import 'package:ecommers/core/blocs/admin_panel_bloc/admin_panel_event.dart';
import 'package:ecommers/core/blocs/admin_panel_bloc/admin_panel_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AdminPanelBloc extends Bloc<AdminPanelEvent, AdminPanelState> {
  AdminPanelBloc() : super(AdminPanelState.initState()) {
    on<ShowDashboard>((event, emit) {
      emit(AdminPanelState.displayingTheDashboard());
    });

    on<ShowStatistics>((event, emit) {
      emit(AdminPanelState.displayingTheStatistics());
    });

    on<ShowSettings>((event, emit) {
      emit(AdminPanelState.displayingTheSettings());
    });

    on<ShowRequests>((event, emit) {
      emit(AdminPanelState.displayingTheRequests());
    });

    on<ShowProducts>((event, emit) {
      emit(AdminPanelState.displayingTheProducts());
    });

    on<ShowNews>((event, emit) {
      emit(AdminPanelState.displayingTheNews());
    });

    on<ShowAccessories>((event, emit) {
      emit(AdminPanelState.displayingTheAccessories());
    });

    on<ShowAcoustics>((event, emit) {
      emit(AdminPanelState.displayingTheAcoustics());
    });
  }
}
