import 'package:ecommers/core/blocs/admin_panel_bloc/admin_panel_event.dart';
import 'package:ecommers/core/blocs/admin_panel_bloc/admin_panel_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AdminPanelBloc extends Bloc<AdminPanelEvent, AdminPanelState> {
  AdminPanelBloc() : super(AdminPanelState.initState());

  @override
  Stream<AdminPanelState> mapEventToState(AdminPanelEvent event) async* {
    yield* event.map(
      showDashboard: _showDashboard,
      showUsers: _showUsers,
      showStatistics: _showStatistics,
      showSettings: _showSettings,
      showRequests: _showRequests,
      showProducts: _showProducts,
    );
  }

  Stream<AdminPanelState> _showDashboard(ShowDashboard event) async* {
    yield AdminPanelState.displayingTheDashboard();
  }

  Stream<AdminPanelState> _showUsers(ShowUsers event) async* {
    yield AdminPanelState.displayingTheUsers();
  }

  Stream<AdminPanelState> _showStatistics(ShowStatistics event) async* {
    yield AdminPanelState.displayingTheStatistics();
  }

  Stream<AdminPanelState> _showSettings(ShowSettings event) async* {
    yield AdminPanelState.displayingTheSettings();
  }

  Stream<AdminPanelState> _showRequests(ShowRequests event) async* {
    yield AdminPanelState.displayingTheRequests();
  }

  Stream<AdminPanelState> _showProducts(ShowProducts event) async* {
    yield AdminPanelState.displayingTheProducts();
  }
}
