import 'package:app_medi/core/errors/failure.dart';
import 'package:app_medi/features/medicines/domain/interfaces/i_medicines.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/models/medicament_model.dart';

part 'medicine_state.dart';
part 'medicine_event.dart';
part 'medicine_bloc.freezed.dart';

@injectable
class MedicineBloc extends Bloc<MedicineEvent, MedicineState> {
  final IMedicine iMedicine;
  MedicineBloc(this.iMedicine) : super(const InitialMedicine());

  @override
  Stream<MedicineState> mapEventToState(
    MedicineEvent event,
  ) async* {
    yield* event.map(
      saveMedicine: (e) async* {
        yield const MedicineState.initial();
        final response = await iMedicine.register(e.model);
        response.fold(
          (l) {
            if (l is ServerFailure) {
              add(
                MedicineEvent.pushMessage(message: l.message),
              );
            }
          },
          (message) => add(
            MedicineEvent.pushMedicine(message: message),
          ),
        );
      },
      pushMedicine: (value) async* {
        yield MedicineState.loadSuccess(message: value.message);
      },
      pushMessage:  (value) async* {
        yield MedicineState.loadSuccess(message: value.message);
      }, deleteItem: (e) async* {
        yield const MedicineState.initial();
        final response = await iMedicine.removeById(e.id);
        response.fold(
          (l) {
            if (l is ServerFailure) {
              add(
                MedicineEvent.pushMessage(message: l.message),
              );
            }
          },
          (message) => add(
            MedicineEvent.pushMedicine(message: message),
          ),
        );
      },
    );
  }
}
