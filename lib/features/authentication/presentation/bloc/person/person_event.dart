part of 'person_bloc.dart';

@freezed
class PersonEvent with _$PersonEvent {
  const factory PersonEvent.savePerson(PersonEntity model) = _PersonEvent;
  const factory PersonEvent.pushPerson({required String message}) = _PushPerson;
  const factory PersonEvent.pushMessage({required String message}) = _PushPersonMessage;
}