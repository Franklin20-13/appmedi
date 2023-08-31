part of 'medicine_bloc.dart';

@freezed
class MedicineState with _$MedicineState {
  const factory MedicineState.initial() = InitialMedicine;
  const factory MedicineState.loadSuccess({required String message}) = LoadSuccessMedicine;
  const factory MedicineState.loadMessage({required String message}) = LoadMessageMedicine;
}