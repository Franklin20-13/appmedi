import 'package:app_medi/core/errors/failure.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/entities/person.dart';
import '../../../domain/interfaces/i_person.dart';

part 'person_state.dart';
part 'person_event.dart';
part 'person_bloc.freezed.dart';

@injectable
class PersonBloc extends Bloc<PersonEvent, PersonState> {
  final IPerson iPerson;
  PersonBloc(this.iPerson) : super(const InitialPerson());

  @override
  Stream<PersonState> mapEventToState(
    PersonEvent event,
  ) async* {
    yield* event.map(
      savePerson: (e) async* {
        yield const PersonState.initial();
        final response = await iPerson.register(e.model);
        response.fold(
          (l) {
            if (l is ServerFailure) {
              add(
                PersonEvent.pushMessage(message: l.message),
              );
            }
          },
          (message) => add(
            PersonEvent.pushPerson(message: message),
          ),
        );
      },
      pushPerson: (value) async* {
        yield PersonState.loadSuccess(message: value.message);
      },
      pushMessage: (value) async* {
        yield PersonState.loadMessage(message: value.message);
      },
    );
  }
}
