import 'package:app_medi/core/errors/failure.dart';
import 'package:app_medi/features/diary_treatment/domain/interfaces/i_treatment.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/models/recipe_detail_models.dart';

part 'medicament_detail_state.dart';
part 'medicament_detail_event.dart';
part 'medicament_detail_bloc.freezed.dart';

@injectable
class MedicamentDetailBloc extends Bloc<MedicamentDetailEvent,MedicamentDetailState>{
  final ITreatment iTreatment;
  MedicamentDetailBloc(this.iTreatment) : super(const MedicamentDetailState.initial());

  @override
  Stream<MedicamentDetailState> mapEventToState(
    MedicamentDetailEvent event,
  ) async* {
    yield* event.map(
      getMedimanetItems: (e) async* {
        iTreatment.getRecipeItems(e.recipeId).then((failureOrSlider) {
          failureOrSlider.fold(
            (l) {
              if (l is ServerFailure) {
                add(
                  MedicamentDetailEvent.pushMessage(message: l.message),
                );
              }
            },
            (items) => add(
              MedicamentDetailEvent.pushMedicamentItemss(items: items),
            ),
          );
        });
      },
      pushMedicamentItemss: (c) async* {
        yield MedicamentDetailState.loadSuccess(items: c.items);
      },
      pushMessage: (c) async* {
        yield MedicamentDetailState.loadMessage(message: c.message);
      },
    );
  }
}