import 'package:app_medi/core/errors/failure.dart';
import 'package:app_medi/features/background/DataBase/collectons/notification_collection.dart';
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
    yield* event.map(
      saveRecipeDetail: (e) async* {
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
            TreatamentEvent.pushTreatment(
                message: message, isFinishRecipe: false),
          ),
        );
      },
      pushTreatment: (value) async* {
        yield TreatamentState.loadSuccess(
            message: value.message, isFinishRecipe: value.isFinishRecipe);
      },
      pushMessage: (value) async* {
        yield TreatamentState.loadMessage(message: value.message);
      },
      saveRecipe: (e) async* {
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
            TreatamentEvent.pushTreatment(
                message: message, isFinishRecipe: false),
          ),
        );
      },
      deleteById: (e) async* {
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
            TreatamentEvent.pushTreatment(
                message: message, isFinishRecipe: false),
          ),
        );
      },
      deleteMedicamentById: (e) async* {
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
            TreatamentEvent.pushTreatment(
                message: message, isFinishRecipe: false),
          ),
        );
      },
      addThoma: (e) async* {
        yield const TreatamentState.initial();
        final response = await iTreatment.isThomeCompleted(e.item);
        response.fold(
          (l) {
            if (l is ServerFailure) {
              add(
                TreatamentEvent.pushMessage(message: l.message),
              );
            }
          },
          (message) => add(
            TreatamentEvent.pushTreatment(
                message: message, isFinishRecipe: false),
          ),
        );
      },
      finishRecipe: (e) async* {
        yield const TreatamentState.initial();
        final response = await iTreatment.finishTreatament(e.item, e.id);
        response.fold(
          (l) {
            if (l is ServerFailure) {
              add(
                TreatamentEvent.pushMessage(message: l.message),
              );
            }
          },
          (message) => add(
            TreatamentEvent.pushTreatment(
                message: message, isFinishRecipe: true),
          ),
        );
      },
      changeRecipe: (e) async* {
        yield const TreatamentState.initial();
        final response = await iTreatment.changeStatusRecipe(e.id);
        response.fold(
          (l) {
            if (l is ServerFailure) {
              add(
                TreatamentEvent.pushMessage(message: l.message),
              );
            }
          },
          (message) => add(
            TreatamentEvent.pushTreatment(
                message: message, isFinishRecipe: true),
          ),
        );
      },
    );
  }
}
