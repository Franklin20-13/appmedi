part of 'people_bloc.dart';

@freezed
class PeopleEvent with _$PeopleEvent {
  const factory PeopleEvent.getDashboard() = _PeopleEvent;
  const factory PeopleEvent.pushPeople({required Dashboard dashboard}) = _PushPeople;
  const factory PeopleEvent.pushMessage({required String message}) = _PushMessage;
}