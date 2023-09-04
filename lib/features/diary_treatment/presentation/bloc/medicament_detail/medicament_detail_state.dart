part of 'medicament_detail_bloc.dart';

@freezed
class MedicamentDetailState with _$MedicamentDetailState {
  const factory MedicamentDetailState.initial() = _Initial;
  const factory MedicamentDetailState.loadSuccess({required List<RecipeDetailModels> items}) = _LoadSuccess;
  const factory MedicamentDetailState.loadMessage({required String message}) = _LoadMessage;
}