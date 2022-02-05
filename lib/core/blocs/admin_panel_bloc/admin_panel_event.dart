import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_panel_event.freezed.dart';

@freezed
abstract class AdminPanelEvent with _$AdminPanelEvent {
  factory AdminPanelEvent.showDashboard() = ShowDashboard;

  factory AdminPanelEvent.showUsers() = ShowUsers;

  factory AdminPanelEvent.showStatistics() = ShowStatistics;

  factory AdminPanelEvent.showRequests() = ShowRequests;

  factory AdminPanelEvent.showSettings() = ShowSettings;

  factory AdminPanelEvent.showProducts({
    required Widget widget,
  }) = ShowProducts;
}
