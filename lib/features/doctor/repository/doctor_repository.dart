import 'package:app_medi/core/data/fields/person_fields.dart';
import 'package:app_medi/core/data/fields/recipe_fields.dart';
import 'package:app_medi/core/data/repository/person_firebase.dart';
import 'package:app_medi/core/data/repository/recipe_firebase.dart';
import 'package:app_medi/core/data/repository/treatment_firestore.dart';
import 'package:app_medi/core/data/repository/user_firebase.dart';
import 'package:app_medi/core/errors/failure.dart';
import 'package:app_medi/features/authentication/domain/interfaces/i_session.dart';
import 'package:app_medi/features/diary_treatment/domain/models/recipe_model.dart';
import 'package:app_medi/features/doctor/domain/interfaces/i_doctor.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../core/data/repository/medicines_firestore.dart';

@LazySingleton(as: IDoctor)
class DoctorRepository implements IDoctor {
  final TreatmentFirestore treatmentFirestore;
  final ISession iSession;
  final MedicineFirestore medicineFirestore;
  final UserFirestore userFirestore;
  final RecipeFirestore recipeFirestore;
  final PersonFirestore personFirestore;
  DoctorRepository(
      this.treatmentFirestore,
      this.iSession,
      this.medicineFirestore,
      this.userFirestore,
      this.recipeFirestore,
      this.personFirestore);
  @override
  Future<Either<Failure, List<RecipeModel>>> getRecipes(int state) async {
    final gerUserSesion = await iSession.getUserSesion();
    final getDocumentRef = userFirestore.getDocument(gerUserSesion!.user!.id!);
    final personDoctor = await personFirestore.whereUser(getDocumentRef).get();
    if (personDoctor.docs.isEmpty) {
      return const Right([]);
    }
    final refPerson = personFirestore.getDocument(personDoctor.docs.first.id);
    final res = await recipeFirestore.whereRecipeStatus(state, refPerson).get();
    List<RecipeModel> list = [];
    for (final item in res.docs) {
      final refUser = (item.data()
          as Map<String, dynamic>)[RecipeFields.refUser] as DocumentReference;
      final person = await personFirestore.whereUser(refUser).get();
      if (person.docs.isEmpty) {
        continue;
      }
      final name = (person.docs.first.data()
          as Map<String, dynamic>)[PersonFields.name] as String;
      final model = RecipeModel.fromJson(item.data() as Map<String, dynamic>,
          id: item.id, refUser: getDocumentRef, patient: name);
      list.add(model);
    }
    list.sort((p1, p2) => p2.date.compareTo(p1.date));
    return right(list);
  }
}
