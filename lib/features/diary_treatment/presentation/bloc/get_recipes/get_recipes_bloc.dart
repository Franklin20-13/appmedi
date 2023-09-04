import 'package:app_medi/features/diary_treatment/domain/interfaces/i_treatment.dart';
import 'package:app_medi/features/diary_treatment/domain/models/recipe_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/errors/failure.dart';

part 'get_recipes_state.dart';
part 'get_recipes_event.dart';
part 'get_recipes_bloc.freezed.dart';

@injectable
class GetRecipesBloc extends Bloc<GetRecipesEvent,GetRecipesState>{
  final ITreatment iTreatment;
  GetRecipesBloc(this.iTreatment) : super(const GetRecipesState.initial());

  @override
  Stream<GetRecipesState> mapEventToState(
    GetRecipesEvent event,
  ) async* {
    yield* event.map(
      getRecipes: (e) async* {
        iTreatment.getRecipes().listen((failureOrSlider) {
          failureOrSlider.fold(
            (l) {
              if (l is ServerFailure) {
                add(
                  GetRecipesEvent.pushMessage(message: l.message),
                );
              }
            },
            (recipes) => add(
              GetRecipesEvent.pushRecipes(recipes: recipes),
            ),
          );
        });
      },
      pushRecipes: (c) async* {
        yield GetRecipesState.loadSuccess(recipes: c.recipes);
      },
      pushMessage: (c) async* {
        yield GetRecipesState.loadMessage(message: c.message);
      },
    );
  }
}