import 'package:ecommers/core/model/accessories_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'accessories_state.freezed.dart';

@freezed
class AccessoriesState with _$AccessoriesState {
  const factory AccessoriesState({
    @Default(false) bool isLoading,
    @Default([]) List<Accessories> accessoriesList,
    @Default(false) bool accessoriesCreated,
  }) = _AccessoriesState;
}
