import 'package:app_medi/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

import '../../../diary_treatment/domain/models/recipe_model.dart';

abstract class IDoctor {
  Future<Either<Failure, List<RecipeModel>>> getRecipes(int state);
}