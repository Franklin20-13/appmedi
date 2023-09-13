part of 'people_bloc.dart';

@freezed
class PeopleState with _$PeopleState {
  const factory PeopleState.initial() = _Initial;
  const factory PeopleState.loadSuccess({required Dashboard dashboard}) = _LoadSuccess;
  const factory PeopleState.loadMessage({required String message}) = _LoadMessage;
}