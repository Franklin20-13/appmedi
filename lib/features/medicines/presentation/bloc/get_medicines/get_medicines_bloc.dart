import 'package:app_medi/core/errors/failure.dart';
import 'package:app_medi/features/medicines/domain/models/medicament_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/interfaces/i_medicines.dart';

part 'get_medicines_state.dart';
part 'get_medicines_event.dart';
part 'get_medicines_bloc.freezed.dart';

@injectable
class GetMedicinesBloc extends Bloc<GetMedicinesEvent, GetMedicinesState> {
  final IMedicine iMedicines;
  GetMedicinesBloc(this.iMedicines) : super(const GetMedicinesState.initial());

  @override
  Stream<GetMedicinesState> mapEventToState(
    GetMedicinesEvent event,
  ) async* {
    yield* event.map(
      getMedicines: (e) async* {
        iMedicines.getMedicines().listen((failureOrSlider) {
          failureOrSlider.fold(
            (l) {
              if (l is ServerFailure) {
                add(
                  GetMedicinesEvent.pushMessage(message: l.message),
                );
              }
            },
            (medicines) => add(
              GetMedicinesEvent.pushMedicines(medicines: medicines),
            ),
          );
        });
      },
      pushMedicines: (c) async* {
        yield GetMedicinesState.loadSuccess(medicines: c.medicines);
      },
      pushMessage: (c) async* {
        yield GetMedicinesState.loadMessage(message: c.message);
      },
    );
  }
}
