import 'package:app_medi/core/errors/failure.dart';
import 'package:app_medi/features/home/domain/entities/people.dart';
import 'package:app_medi/features/home/domain/interfaces/i_people.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'people_state.dart';
part 'people_event.dart';
part 'people_bloc.freezed.dart';

@injectable
class PeopleBloc extends Bloc<PeopleEvent, PeopleState> {
  final IPeopleRepository iCategoryRepository;
  PeopleBloc(this.iCategoryRepository) : super(const PeopleState.initial());

  @override
  Stream<PeopleState> mapEventToState(
    PeopleEvent event,
  ) async* {
    yield* event.map(
      getPeople: (e) async* {
        iCategoryRepository.getPeople().listen((failureOrSlider) {
          failureOrSlider.fold(
            (l) {
              if (l is ServerFailure) {
                add(
                  PeopleEvent.pushMessage(message: l.message),
                );
              }
            },
            (peoples) => add(
              PeopleEvent.pushPeople(people: peoples),
            ),
          );
        });
      },
      pushPeople: (c) async* {
        yield PeopleState.loadSuccess(people: c.people);
      },
      pushMessage: (_PushMessage value) async* {
        yield PeopleState.loadMessage(message: value.message);
      },
    );
  }
}
