import 'package:app_medi/core/data/fields/recipe_fields.dart';
import 'package:app_medi/core/data/repository/abstract_firestore.dart';
import 'package:app_medi/core/helpers/firestore_helper.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class RecipeFirestore extends AbstractFirestore {
  RecipeFirestore(FirestoreHelper helper) : super(helper);

  @override
  CollectionReference get collection => helper.recipeCollection;

  @override
  DocumentReference getDocument(String id) => collection.doc(id);

  @override
  void checkField(String field, value) {
    switch (field) {
      case RecipeFields.refDoctor:
        if (value is DocumentReference) {
          data[field] = value;
        } else {
          throw TypeError();
        }
        break;
      case RecipeFields.refUser:
        if (value is DocumentReference) {
          data[field] = value;
        } else {
          throw TypeError();
        }
        break;
      case RecipeFields.name:
        if (value is String) {
          data[field] = value;
        } else {
          throw TypeError();
        }
        break;
      case RecipeFields.date:
        if (value is DateTime) {
          data[field] = value;
        } else {
          throw TypeError();
        }
        break;
      case RecipeFields.description:
        if (value is String) {
          data[field] = value;
        } else {
          throw TypeError();
        }
        break;
      case RecipeFields.status:
        if (value is int) {
          data[field] = value;
        } else {
          throw TypeError();
        }
        break;
      default:
        throw ArgumentError();
    }
  }

  Query whereExistRecipe(String name, DocumentReference userRef) => collection
      .where(RecipeFields.name, isEqualTo: name)
      .where(RecipeFields.refUser, isEqualTo: userRef);
  Query whereMedicamentsForUser(DocumentReference documentReference) =>
      collection.where(RecipeFields.refUser, isEqualTo: documentReference);
  Query whereRecipeStatus(int state, DocumentReference documentReference) =>
      collection
          .where(RecipeFields.status, isEqualTo: state)
          .where(RecipeFields.refDoctor, isEqualTo: documentReference);
}
