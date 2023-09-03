part of 'get_medicines_bloc.dart';

@freezed
class GetMedicinesEvent with _$GetMedicinesEvent {
  const factory GetMedicinesEvent.getMedicines() = _GetMedicinesEvent;
  const factory GetMedicinesEvent.pushMedicines({required List<MedicamentModel> medicines}) = _PushMedicines;
  const factory GetMedicinesEvent.pushMessage({required String message}) = _PushMessage;
}