part of 'treatament_bloc.dart';

@freezed
class TreatamentEvent with _$TreatamentEvent {
  const factory TreatamentEvent.saveRecipeDetail(RecipeDetailModels model) = _RecipeDetailEvent;
  const factory TreatamentEvent.saveRecipe(RecipeModel model) = _RecipeEvent;
  const factory TreatamentEvent.deleteById(String id) = _DeleteByIdEvent;
  const factory TreatamentEvent.deleteMedicamentById(String id) = _DeleteMecicamentByIdEvent;
  const factory TreatamentEvent.pushTreatment({required String message}) = _PushMedicine;
  const factory TreatamentEvent.pushMessage({required String message}) = _PushMedicineMessage;
}