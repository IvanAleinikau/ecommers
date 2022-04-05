import 'package:ecommers/core/model/vinyl_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vinyl_state.freezed.dart';

@freezed
class VinylState with _$VinylState {
  const factory VinylState({
    @Default(false) bool isLoading,
    @Default([]) List<Vinyl> vinylList,
    @Default(false) bool vinylCreated,
  }) = _VinylState;
}
