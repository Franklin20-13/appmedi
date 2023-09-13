import 'package:app_medi/core/errors/failure.dart';
import 'package:app_medi/features/authentication/domain/entities/person.dart';
import 'package:app_medi/features/background/DataBase/collectons/notification_collection.dart';
import 'package:dartz/dartz.dart';

import '../models/recipe_detail_models.dart';
import '../models/recipe_model.dart';

abstract class ITreatment {
  Future<Either<Failure, String>> register(RecipeDetailModels model);
  Future<Either<Failure, String>> registerRecipe(RecipeModel model);
  Stream<Either<Failure, List<RecipeModel>>> getRecipes();
  Future<Either<Failure, List<RecipeDetailModels>>> getRecipeItems(String recipeId,bool isDoctor);
  Future<Either<Failure, String>> deleteRecipe(String id);
  Future<Either<Failure, String>> deleteMedicamentByRecipe(String id);
  Future<Either<Failure, List<NotificationCollection?>>> getNotifications();
  Future<Either<Failure, String>> isThomeCompleted(NotificationCollection item);
  Future<Either<Failure, String>> finishTreatament(RecipeModel item,String id);
  Future<Either<Failure, List<PersonEntity>>> getDoctos();
  Future<Either<Failure, String>> changeStatusRecipe(String id);
}