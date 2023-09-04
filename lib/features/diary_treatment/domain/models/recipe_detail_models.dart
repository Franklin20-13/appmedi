import 'package:app_medi/core/data/fields/treatment_fields.dart';
import 'package:app_medi/features/diary_treatment/domain/models/recipe_model.dart';
import 'package:app_medi/features/medicines/domain/models/medicament_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class RecipeDetailModels {
  RecipeDetailModels(
      {this.id,
      required this.medicRef,
      required this.quantity,
      this.medicamentId,
      required this.measure,
      required this.fromDate,
      required this.toDate,
      required this.userRef,
      this.recipeRef,
      this.recipeId,
      this.medicamentModel,
      this.recipeModel,
      required this.hour});
  String? id;
  DocumentReference? medicRef;
  DocumentReference? recipeRef;
  String? medicamentId;
  String? recipeId;
  int quantity;
  String measure;
  DateTime fromDate;
  DateTime toDate;
  String hour;
  DocumentReference? userRef;
  MedicamentModel? medicamentModel;
  RecipeModel? recipeModel;
  factory RecipeDetailModels.fromJson(
    Map<String, dynamic> json, {
    String? id,
    DocumentReference? refUser,
    Map<String, dynamic>? jsonMedicine,
    String? medicineId,
    Map<String, dynamic>? jsonRecipe,
    String? recipeId,
  }) {
    return RecipeDetailModels(
        id: json.containsKey(TreatmentFields.id)
            ? json[TreatmentFields.id]
            : id ?? '',
        medicRef: json.containsKey(TreatmentFields.refMedicament)
            ? json[TreatmentFields.refMedicament]
            : null,
        quantity: json.containsKey(TreatmentFields.quantity)
            ? json[TreatmentFields.quantity]
            : 0,
        measure: json.containsKey(TreatmentFields.measure)
            ? json[TreatmentFields.measure]
            : '',
        fromDate: json.containsKey(TreatmentFields.fromDate)
            ? json[TreatmentFields.fromDate] == null
                ? DateTime.now()
                : DateTime.fromMillisecondsSinceEpoch(
                    (json[TreatmentFields.fromDate] as Timestamp)
                        .millisecondsSinceEpoch,
                  )
            : DateTime.now(),
        toDate: json.containsKey(TreatmentFields.toDate)
            ? json[TreatmentFields.toDate] == null
                ? DateTime.now()
                : DateTime.fromMillisecondsSinceEpoch(
                    (json[TreatmentFields.toDate] as Timestamp)
                        .millisecondsSinceEpoch,
                  )
            : DateTime.now(),
        hour: json.containsKey(TreatmentFields.hour)
            ? json[TreatmentFields.hour]
            : "",
        userRef: json.containsKey(TreatmentFields.userRef)
            ? json[TreatmentFields.userRef]
            : null,
        recipeRef: json.containsKey(TreatmentFields.recipeRef)
            ? json[TreatmentFields.recipeRef]
            : null,
        medicamentModel:
            MedicamentModel.fromJson(jsonMedicine!, id: medicineId),
        recipeModel: RecipeModel.fromJson(jsonRecipe!, id: recipeId));
  }
}

Map<String, dynamic> mapRecipeDetail(RecipeDetailModels instance) =>
    <String, dynamic>{
      TreatmentFields.refMedicament: instance.medicRef,
      TreatmentFields.quantity: instance.quantity,
      TreatmentFields.measure: instance.measure,
      TreatmentFields.fromDate: instance.fromDate,
      TreatmentFields.toDate: instance.toDate,
      TreatmentFields.hour: instance.hour,
      TreatmentFields.userRef: instance.userRef,
      TreatmentFields.recipeRef: instance.recipeRef,
    };
