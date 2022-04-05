import 'package:ecommers/core/model/acoustics_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'acoustics_state.freezed.dart';

@freezed
class AcousticsState with _$AcousticsState {
  const factory AcousticsState({
    @Default(false) bool isLoading,
    @Default([]) List<Acoustics> acousticsList,
    @Default(false) bool acousticsCreated,
  }) = _AcousticsState;
}
