import 'package:app_medi/core/errors/failure.dart';
import 'package:app_medi/features/diary_treatment/domain/interfaces/i_treatment.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/models/recipe_detail_models.dart';
import '../../../domain/models/recipe_model.dart';

part 'treatament_state.dart';
part 'treatament_event.dart';
part 'treatament_bloc.freezed.dart';

@injectable
class TreatamentBloc extends Bloc<TreatamentEvent, TreatamentState> {
  final ITreatment iTreatment;
  TreatamentBloc(this.iTreatment) : super(const InitialTreatment());

  @override
  Stream<TreatamentState> mapEventToState(
    TreatamentEvent event,
  ) async* {
    yield* event.map(saveRecipeDetail: (e) async* {
      yield const TreatamentState.initial();
      final response = await iTreatment.register(e.model);
      response.fold(
        (l) {
          if (l is ServerFailure) {
            add(
              TreatamentEvent.pushMessage(message: l.message),
            );
          }
        },
        (message) => add(
          TreatamentEvent.pushTreatment(message: message),
        ),
      );
    }, pushTreatment: (value) async* {
      yield TreatamentState.loadSuccess(message: value.message);
    }, pushMessage: (value) async* {
      yield TreatamentState.loadMessage(message: value.message);
    }, saveRecipe: (e) async* {
      yield const TreatamentState.initial();
      final response = await iTreatment.registerRecipe(e.model);
      response.fold(
        (l) {
          if (l is ServerFailure) {
            add(
              TreatamentEvent.pushMessage(message: l.message),
            );
          }
        },
        (message) => add(
          TreatamentEvent.pushTreatment(message: message),
        ),
      );
    }, deleteById: (e) async* {
      yield const TreatamentState.initial();
      final response = await iTreatment.deleteRecipe(e.id);
      response.fold(
        (l) {
          if (l is ServerFailure) {
            add(
              TreatamentEvent.pushMessage(message: l.message),
            );
          }
        },
        (message) => add(
          TreatamentEvent.pushTreatment(message: message),
        ),
      );
    }, deleteMedicamentById: (e) async* {
      yield const TreatamentState.initial();
      final response = await iTreatment.deleteMedicamentByRecipe(e.id);
      response.fold(
        (l) {
          if (l is ServerFailure) {
            add(
              TreatamentEvent.pushMessage(message: l.message),
            );
          }
        },
        (message) => add(
          TreatamentEvent.pushTreatment(message: message),
        ),
      );
    });
  }
}
