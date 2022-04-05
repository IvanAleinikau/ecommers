import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_panel_state.freezed.dart';

@freezed
abstract class AdminPanelState with _$AdminPanelState {
  factory AdminPanelState.initState() = AdminPanelInitState;

  factory AdminPanelState.displayingTheDashboard() = DisplayingTheDashboard;

  factory AdminPanelState.displayingTheStatistics() = DisplayingTheStatistics;

  factory AdminPanelState.displayingTheRequests() = DisplayingTheRequests;

  factory AdminPanelState.displayingTheSettings() = DisplayingTheSettings;

  factory AdminPanelState.displayingTheProducts() = DisplayingTheProducts;

  factory AdminPanelState.displayingTheNews() = DisplayingTheNews;
}
