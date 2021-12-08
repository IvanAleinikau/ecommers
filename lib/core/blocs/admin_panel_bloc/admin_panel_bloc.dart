import 'package:ecommers/core/blocs/admin_panel_bloc/admin_panel_event.dart';
import 'package:ecommers/core/blocs/admin_panel_bloc/admin_panel_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AdminPanelBloc extends Bloc<AdminPanelEvent, AdminPanelState> {
  AdminPanelBloc() : super(AdminPanelState.initState());

  @override
  Stream<AdminPanelState> mapEventToState(AdminPanelEvent event) async* {
    yield* event.map(
      showDashboard: _showDashboard,
    );
  }

  Stream<AdminPanelState> _showDashboard(ShowDashboard event) async* {
    yield AdminPanelState.displayingTheDashboard();
  }
}
