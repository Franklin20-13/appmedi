part of 'get_recipes_bloc.dart';

@freezed
class GetRecipesState with _$GetRecipesState {
  const factory GetRecipesState.initial() = _Initial;
  const factory GetRecipesState.loadSuccess({required List<RecipeModel> recipes}) = _LoadSuccess;
  const factory GetRecipesState.loadMessage({required String message}) = _LoadMessage;
}