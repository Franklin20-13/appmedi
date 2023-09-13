part of 'recipes_bloc.dart';

@freezed
class RecipesState with _$RecipesState {
  const factory RecipesState.initial() = _Initial;
  const factory RecipesState.loadSuccess({required List<RecipeModel> recipes}) = _LoadSuccess;
  const factory RecipesState.loadMessage({required String message}) = _LoadMessage;
}