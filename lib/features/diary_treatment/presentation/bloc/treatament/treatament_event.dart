part of 'treatament_bloc.dart';

@freezed
class TreatamentEvent with _$TreatamentEvent {
  const factory TreatamentEvent.saveTreatment(TreatamentModels model) = _TreatamentEvent;
  const factory TreatamentEvent.pushTreatment({required String message}) = _PushMedicine;
  const factory TreatamentEvent.pushMessage({required String message}) = _PushMedicineMessage;
}