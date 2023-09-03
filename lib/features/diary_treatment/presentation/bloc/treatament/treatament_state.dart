part of 'treatament_bloc.dart';

@freezed
class TreatamentState with _$TreatamentState {
  const factory TreatamentState.initial() = InitialTreatment;
  const factory TreatamentState.loadSuccess({required String message}) = LoadSuccessTreatment;
  const factory TreatamentState.loadMessage({required String message}) = LoadMessageTreatment;
}