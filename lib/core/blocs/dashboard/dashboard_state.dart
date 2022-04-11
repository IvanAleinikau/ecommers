import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_state.freezed.dart';

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState({
    @Default(0) int vinylCount,
    @Default(0) int acousticsCount,
    @Default(0) int accessoriesCount,
  }) = _DashboardState;
}
