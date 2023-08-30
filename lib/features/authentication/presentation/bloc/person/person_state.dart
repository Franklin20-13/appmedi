part of 'person_bloc.dart';

@freezed
class PersonState with _$PersonState {
  const factory PersonState.initial() = InitialPerson;
  const factory PersonState.loadSuccess({required String message}) = LoadSuccessPerson;
  const factory PersonState.loadMessage({required String message}) = LoadMessagePerson;
}