part of 'medicament_detail_bloc.dart';

@freezed
class MedicamentDetailEvent with _$MedicamentDetailEvent {
  const factory MedicamentDetailEvent.getMedimanetItems(String recipeId,bool isDoctor) = _MedicamentDetailEvent;
  const factory MedicamentDetailEvent.pushMedicamentItemss({required List<RecipeDetailModels> items}) = _PushMedicamentDetail;
  const factory MedicamentDetailEvent.pushMessage({required String message}) = _PushMessage;
}