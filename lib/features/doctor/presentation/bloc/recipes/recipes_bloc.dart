import 'package:app_medi/core/errors/failure.dart';
import 'package:app_medi/features/doctor/domain/interfaces/i_doctor.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../diary_treatment/domain/models/recipe_model.dart';

part 'recipes_state.dart';
part 'recipes_event.dart';
part 'recipes_bloc.freezed.dart';

@injectable
class RecipesBloc extends Bloc<RecipesEvent,RecipesState>{
  final IDoctor iDoctor;
  RecipesBloc(this.iDoctor) : super(const RecipesState.initial());

  @override
  Stream<RecipesState> mapEventToState(
    RecipesEvent event,
  ) async* {
    yield* event.map(
      getRecipes: (e) async* {
        yield const RecipesState.initial();
        iDoctor.getRecipes(e.state).then((failureOrSlider) {
          failureOrSlider.fold(
            (l) {
              if (l is ServerFailure) {
                add(
                  RecipesEvent.pushMessage(message: l.message),
                );
              }
            },
            (recipes) => add(
              RecipesEvent.pushRecipes(recipes: recipes),
            ),
          );
        });
      },
      pushRecipes: (c) async* {
        yield RecipesState.loadSuccess(recipes: c.recipes);
      },
      pushMessage: (c) async* {
        yield RecipesState.loadMessage(message: c.message);
      },
    );
  }
}