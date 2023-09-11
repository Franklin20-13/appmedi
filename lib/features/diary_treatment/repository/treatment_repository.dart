import 'package:app_medi/core/data/fields/recipe_fields.dart';
import 'package:app_medi/core/data/repository/medicines_firestore.dart';
import 'package:app_medi/core/data/repository/recipe_firebase.dart';
import 'package:app_medi/core/data/repository/treatment_firestore.dart';
import 'package:app_medi/core/errors/failure.dart';
import 'package:app_medi/features/authentication/domain/interfaces/i_session.dart';
import 'package:app_medi/features/background/DataBase/collectons/notification_collection.dart';
import 'package:app_medi/features/background/services/service_Isar.dart';
import 'package:app_medi/features/diary_treatment/domain/models/recipe_detail_models.dart';
import 'package:app_medi/features/diary_treatment/domain/models/recipe_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../core/data/fields/treatment_fields.dart';
import '../../../core/data/repository/user_firebase.dart';
import '../domain/interfaces/i_treatment.dart';

@LazySingleton(as: ITreatment)
class UserRepository implements ITreatment {
  final TreatmentFirestore treatmentFirestore;
  final ISession iSession;
  final MedicineFirestore medicineFirestore;
  final UserFirestore userFirestore;
  final RecipeFirestore recipeFirestore;
  final ServiceIsar serviceIsar = ServiceIsar();
  UserRepository(this.treatmentFirestore, this.iSession, this.medicineFirestore,
      this.userFirestore, this.recipeFirestore);
  @override
  Future<Either<Failure, String>> register(RecipeDetailModels model) async {
    try {
      final user = await iSession.getUserSesion();
      final refUser = userFirestore.getDocument(user!.user!.id!);
      model.userRef = refUser;
      if (model.medicamentId == null) {
        return const Left(ServerFailure("Seleccione el medicamento"));
      }

      final refMedicine = medicineFirestore.getDocument(model.medicamentId!);
      if (refMedicine.id.isEmpty) {
        return const Left(
            ServerFailure("No se encontro el medicamento en el servidor"));
      }
      model.medicRef = refMedicine;
      if (model.id != null) {
        await treatmentFirestore
            .addField(TreatmentFields.refMedicament, model.medicRef)
            .addField(TreatmentFields.quantity, model.quantity)
            .addField(TreatmentFields.measure, model.measure)
            .addField(TreatmentFields.fromDate, model.fromDate)
            .addField(TreatmentFields.toDate, model.toDate)
            .addField(TreatmentFields.hour, model.hour)
            .addField(TreatmentFields.thomas, model.thomas)
            .update(model.id);

        final document = await treatmentFirestore.getDocument(model.id!).get();

        final recipeRef =
            (document.data() as Map<String, dynamic>)[TreatmentFields.recipeRef]
                as DocumentReference;
        final recipeDoc = await recipeFirestore.getDocument(recipeRef.id).get();
        final medicineRef = (document.data()
                as Map<String, dynamic>)[TreatmentFields.refMedicament]
            as DocumentReference;
        final medicineDoc =
            await medicineFirestore.getDocument(medicineRef.id).get();
        final modelMedicine = RecipeDetailModels.fromJson(
          document.data() as Map<String, dynamic>,
          id: document.id,
          jsonMedicine: medicineDoc.data() as Map<String, dynamic>,
          medicineId: medicineDoc.id,
          jsonRecipe: recipeDoc.data() as Map<String, dynamic>,
          recipeId: recipeDoc.id,
        );
        await serviceIsar.insertNotification(
            modelMedicine, user.user!.userName);
        return const Right("Medicamento actualizado en la receta médica");
      }
      final refRecipe = recipeFirestore.getDocument(model.recipeId!);
      if (refRecipe.id.isEmpty) {
        return const Left(
            ServerFailure("No se encontro la receta en el servidor"));
      }
      model.recipeRef = refRecipe;
      final existMedicine = await treatmentFirestore
          .whereExistMedicine(refMedicine, refRecipe)
          .get();
      if (existMedicine.docs.isNotEmpty) {
        return const Left(ServerFailure("El medicamento ya existe"));
      }

      final result =
          await treatmentFirestore.collection.add(mapRecipeDetail(model));
      if (result.id.isNotEmpty) {
        final document = await result.get();

        final recipeRef =
            (document.data() as Map<String, dynamic>)[TreatmentFields.recipeRef]
                as DocumentReference;
        final recipeDoc = await recipeFirestore.getDocument(recipeRef.id).get();
        final medicineRef = (document.data()
                as Map<String, dynamic>)[TreatmentFields.refMedicament]
            as DocumentReference;
        final medicineDoc =
            await medicineFirestore.getDocument(medicineRef.id).get();
        final model = RecipeDetailModels.fromJson(
          document.data() as Map<String, dynamic>,
          id: document.id,
          jsonMedicine: medicineDoc.data() as Map<String, dynamic>,
          medicineId: medicineDoc.id,
          jsonRecipe: recipeDoc.data() as Map<String, dynamic>,
          recipeId: recipeDoc.id,
        );

        await serviceIsar.insertNotification(model, user.user!.userName);
      }

      return const Right("Medicamento agregado a la receta médica");
    } catch (e) {
      return const Left(ServerFailure('Error al comunicarse con el servidor'));
    }
  }

  @override
  Future<Either<Failure, String>> registerRecipe(RecipeModel model) async {
    try {
      if (model.id != null) {
        await recipeFirestore
            .addField(RecipeFields.name, model.name)
            .addField(RecipeFields.description, model.description)
            .addField(RecipeFields.date, model.date)
            .update(model.id);
        return const Right("Receta Actualizada");
      }
      final user = await iSession.getUserSesion();
      final refUser = userFirestore.getDocument(user!.user!.id!);
      model.userRef = refUser;
      final existMedicine =
          await recipeFirestore.whereExistRecipe(model.name, refUser).get();
      if (existMedicine.docs.isNotEmpty) {
        return const Left(ServerFailure("La receta ya existe"));
      }
      await recipeFirestore.collection.add(mapRecipe(model));
      return const Right("Receta Guardada");
    } catch (e) {
      return const Left(ServerFailure('Error al comunicarse con el servidor'));
    }
  }

  @override
  Stream<Either<Failure, List<RecipeModel>>> getRecipes() async* {
    final gerUserSesion = await iSession.getUserSesion();
    final getDocumentRef = userFirestore.getDocument(gerUserSesion!.user!.id!);
    yield* recipeFirestore
        .whereMedicamentsForUser(getDocumentRef)
        .snapshots()
        .map((event) {
      final recipes = event.docs
          .map(
            (i) => RecipeModel.fromJson(i.data() as Map<String, dynamic>,
                id: i.id, refUser: getDocumentRef),
          )
          .toList()
        ..sort((p1, p2) => p2.date.compareTo(p1.date));
      return right(recipes);
    });
  }

  @override
  Future<Either<Failure, List<RecipeDetailModels>>> getRecipeItems(
      String recipeId) async {
    try {
      final gerUserSesion = await iSession.getUserSesion();
      final getDocumentRef =
          userFirestore.getDocument(gerUserSesion!.user!.id!);
      final getRecipeRef = recipeFirestore.getDocument(recipeId);
      final result = await treatmentFirestore
          .whereRecipeItems(getDocumentRef, getRecipeRef)
          .get();
      List<RecipeDetailModels> recipeDetails = [];
      for (final item in result.docs) {
        final recipeRef =
            (item.data() as Map<String, dynamic>)[TreatmentFields.recipeRef]
                as DocumentReference;
        final recipeDoc = await recipeFirestore.getDocument(recipeRef.id).get();
        final medicineRef =
            (item.data() as Map<String, dynamic>)[TreatmentFields.refMedicament]
                as DocumentReference;
        final medicineDoc =
            await medicineFirestore.getDocument(medicineRef.id).get();
        final model = RecipeDetailModels.fromJson(
          item.data() as Map<String, dynamic>,
          id: item.id,
          jsonMedicine: medicineDoc.data() as Map<String, dynamic>,
          medicineId: medicineDoc.id,
          jsonRecipe: recipeDoc.data() as Map<String, dynamic>,
          recipeId: recipeDoc.id,
        );
        recipeDetails.add(model);
      }
      return right(recipeDetails);
    } catch (e) {
      return const Left(ServerFailure('Error al comunicarse con el servidor'));
    }
  }

  @override
  Future<Either<Failure, String>> deleteRecipe(String id) async {
    try {
      final getDocumentRecipe = await recipeFirestore.getDocument(id).get();
      if (!getDocumentRecipe.exists) {
        return const Left(
            ServerFailure("No se encontro informacion de la receta"));
      }
      final getRecipeRef = recipeFirestore.getDocument(id);
      final existTreatament =
          await treatmentFirestore.whereRecipeRef(getRecipeRef).get();
      if (existTreatament.docs.isNotEmpty) {
        return const Left(
          ServerFailure(
              "Esta receta ya tiene medicamentos, para borrar elimine los medicamentos  y luego la receta."),
        );
      }
      await recipeFirestore.delete(id);
      return const Right("Receta eliminada correctamente");
    } catch (e) {
      return const Left(ServerFailure('Error al comunicarse con el servidor'));
    }
  }

  @override
  Future<Either<Failure, String>> deleteMedicamentByRecipe(String id) async {
    try {
      final medicineItem = await treatmentFirestore.getDocument(id).get();
      if (!medicineItem.exists) {
        return const Left(ServerFailure("Medicamento no encontrado"));
      }
      var currentThoma = (medicineItem.data()
          as Map<String, dynamic>)[TreatmentFields.completed] as int;
      if (currentThoma > 0) {
        return const Left(ServerFailure(
            "No puedes eliminar este medicamento porque el  tratamiento  ya inicio"));
      }
      await treatmentFirestore.delete(id);
      await serviceIsar.deteleNotification(id);
      return const Right("medicamento eliminado correctamente");
    } catch (e) {
      return const Left(ServerFailure('Error al comunicarse con el servidor'));
    }
  }

  @override
  Future<Either<Failure, List<NotificationCollection?>>>
      getNotifications() async {
    try {
      final user = await iSession.getUserSesion();
      final result = await serviceIsar.getNotifications(user!.user!.userName);
      return Right(result);
    } catch (e) {
      return const Left(ServerFailure('Error al comunicarse con el servidor'));
    }
  }

  @override
  Future<Either<Failure, String>> isThomeCompleted(
      NotificationCollection item) async {
    try {
      final medicineItem =
          await treatmentFirestore.getDocument(item.keyDocument).get();
      if (!medicineItem.exists) {
        return const Left(ServerFailure("Medicamento no encontrado"));
      }
      var currentThoma = (medicineItem.data()
          as Map<String, dynamic>)[TreatmentFields.completed] as int;
      var currentHourCompletd = (medicineItem.data()
          as Map<String, dynamic>)[TreatmentFields.hourCompleted] as String;

      currentHourCompletd = "$currentHourCompletd${item.hour};";
      currentThoma++;
      await treatmentFirestore
          .addField(TreatmentFields.completed, currentThoma)
          .addField(TreatmentFields.hourCompleted, currentHourCompletd)
          .update(item.keyDocument);
      item.tomado = true;
      await serviceIsar.updateNotification(item);

      var currentFinish = (medicineItem.data()
          as Map<String, dynamic>)[TreatmentFields.thomas] as int;

      if (currentThoma == currentFinish) {
        await serviceIsar.deteleNotification(item.keyDocument);
        return Right(
            "Medicamento Tomado, eliminado ${currentFinish.toString()} notificaciones porque ya completaste las tomas dentro del  periodo.");
      }

      return const Right("Medicamento Tomado");
    } catch (e) {
      return const Left(ServerFailure('Error al comunicarse con el servidor'));
    }
  }
}
