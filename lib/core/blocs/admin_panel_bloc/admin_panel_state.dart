import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_panel_state.freezed.dart';

@freezed
abstract class AdminPanelState with _$AdminPanelState {
  factory AdminPanelState.initState() = AdminPanelInitState;

  factory AdminPanelState.displayingTheDashboard() = DisplayingTheDashboard;

}