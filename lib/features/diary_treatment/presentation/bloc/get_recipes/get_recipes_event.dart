part of 'get_recipes_bloc.dart';

@freezed
class GetRecipesEvent with _$GetRecipesEvent {
  const factory GetRecipesEvent.getRecipes() = _GetRecipesEvent;
  const factory GetRecipesEvent.pushRecipes({required List<RecipeModel> recipes}) = _PushRecipe;
  const factory GetRecipesEvent.pushMessage({required String message}) = _PushMessage;
}