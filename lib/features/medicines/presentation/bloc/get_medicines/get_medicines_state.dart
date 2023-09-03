part of 'get_medicines_bloc.dart';

@freezed
class GetMedicinesState with _$GetMedicinesState {
  const factory GetMedicinesState.initial() = _Initial;
  const factory GetMedicinesState.loadSuccess({required List<MedicamentModel> medicines}) = _LoadSuccess;
  const factory GetMedicinesState.loadMessage({required String message}) = _LoadMessage;
}