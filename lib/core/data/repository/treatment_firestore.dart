import 'package:app_medi/core/data/fields/treatment_fields.dart';
import 'package:app_medi/core/data/repository/abstract_firestore.dart';
import 'package:app_medi/core/helpers/firestore_helper.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class TreatmentFirestore extends AbstractFirestore {
  TreatmentFirestore(FirestoreHelper helper) : super(helper);

  @override
  CollectionReference get collection => helper.treatmentCollection;

  @override
  DocumentReference getDocument(String id) => collection.doc(id);

  @override
  void checkField(String field, value) {
    switch (field) {
      case TreatmentFields.refMedicament:
        if (value is DocumentReference) {
          data[field] = value;
        } else {
          throw TypeError();
        }
        break;
      case TreatmentFields.quantity:
        if (value is int) {
          data[field] = value;
        } else {
          throw TypeError();
        }
        break;
      case TreatmentFields.measure:
        if (value is String) {
          data[field] = value;
        } else {
          throw TypeError();
        }
        break;
      case TreatmentFields.fromDate:
        if (value is DateTime) {
          data[field] = value;
        } else {
          throw TypeError();
        }
        break;
      case TreatmentFields.toDate:
        if (value is DateTime) {
          data[field] = value;
        } else {
          throw TypeError();
        }
        break;
      case TreatmentFields.hour:
        if (value is String) {
          data[field] = value;
        } else {
          throw TypeError();
        }
        break;
      default:
        throw ArgumentError();
    }
  }

  Query whereExistMedicine(
          DocumentReference refMedicament, DocumentReference recipeRef) =>
      collection
          .where(TreatmentFields.refMedicament, isEqualTo: refMedicament)
          .where(TreatmentFields.recipeRef, isEqualTo: recipeRef);
  Query whereRecipeItems(
          DocumentReference refUser, DocumentReference refRecipe) =>
      collection
          .where(TreatmentFields.recipeRef, isEqualTo: refRecipe)
          .where(TreatmentFields.userRef, isEqualTo: refUser);
  Query whereRecipeRef(DocumentReference refRecipe) =>
      collection.where(TreatmentFields.recipeRef, isEqualTo: refRecipe);
}
