part of 'recipes_bloc.dart';

@freezed
class RecipesEvent with _$RecipesEvent {
  const factory RecipesEvent.getRecipes(int state) = _RecipesEvent;
  const factory RecipesEvent.pushRecipes({required List<RecipeModel> recipes}) = _PushRecipe;
  const factory RecipesEvent.pushMessage({required String message}) = _PushMessage;
}