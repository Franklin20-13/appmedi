import 'package:app_medi/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

import '../models/recipe_detail_models.dart';
import '../models/recipe_model.dart';

abstract class ITreatment {
  Future<Either<Failure, String>> register(RecipeDetailModels model);
  Future<Either<Failure, String>> registerRecipe(RecipeModel model);
  Stream<Either<Failure, List<RecipeModel>>> getRecipes();
  Future<Either<Failure, List<RecipeDetailModels>>> getRecipeItems(String recipeId);
}