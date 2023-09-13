part of 'getDoctors_bloc.dart';

@freezed
class GetDoctorsState with _$GetDoctorsState {
  const factory GetDoctorsState.initial() = _Initial;
  const factory GetDoctorsState.loadSuccess({required List<PersonEntity> doctors}) = _LoadSuccess;
  const factory GetDoctorsState.loadMessage({required String message}) = _LoadMessage;
}