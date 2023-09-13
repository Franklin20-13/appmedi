part of 'getDoctors_bloc.dart';

@freezed
class GetDoctorsEvent with _$GetDoctorsEvent {
  const factory GetDoctorsEvent.getDoctors() = _GetDoctorsEvent;
  const factory GetDoctorsEvent.pushDoctors({required List<PersonEntity> doctors}) = _PushDoctors;
  const factory GetDoctorsEvent.pushMessage({required String message}) = _PushMessage;
}