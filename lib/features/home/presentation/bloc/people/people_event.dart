part of 'people_bloc.dart';

@freezed
class PeopleEvent with _$PeopleEvent {
  const factory PeopleEvent.getPeople() = _PeopleEvent;
  const factory PeopleEvent.pushPeople({required List<PeopleEntity> people}) = _PushPeople;
  const factory PeopleEvent.pushMessage({required String message}) = _PushMessage;
}