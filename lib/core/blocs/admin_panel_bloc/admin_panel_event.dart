import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_panel_event.freezed.dart';

@freezed
abstract class AdminPanelEvent with _$AdminPanelEvent {
  factory AdminPanelEvent.showDashboard() = ShowDashboard;
}
