part of 'medicine_bloc.dart';

@freezed
class MedicineEvent with _$MedicineEvent {
  const factory MedicineEvent.saveMedicine(MedicamentModel model) = _MedicineEvent;
  const factory MedicineEvent.pushMedicine({required String message}) = _PushMedicine;
  const factory MedicineEvent.pushMessage({required String message}) = _PushMedicineMessage;
}