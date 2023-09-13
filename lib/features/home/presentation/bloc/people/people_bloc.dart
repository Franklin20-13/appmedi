import 'package:app_medi/core/errors/failure.dart';
import 'package:app_medi/features/diary_treatment/domain/interfaces/i_treatment.dart';
import 'package:app_medi/features/diary_treatment/domain/models/dashboard.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'people_state.dart';
part 'people_event.dart';
part 'people_bloc.freezed.dart';

@injectable
class PeopleBloc extends Bloc<PeopleEvent, PeopleState> {
  final ITreatment treatment;
  PeopleBloc(this.treatment) : super(const PeopleState.initial());

  @override
  Stream<PeopleState> mapEventToState(
    PeopleEvent event,
  ) async* {
    yield* event.map(
      getDashboard: (e) async* {
        treatment.getDashboard().then((failureOrSlider) {
          failureOrSlider.fold(
            (l) {
              if (l is ServerFailure) {
                add(
                  PeopleEvent.pushMessage(message: l.message),
                );
              }
            },
            (peoples) => add(
              PeopleEvent.pushPeople(dashboard: peoples),
            ),
          );
        });
      },
      pushPeople: (c) async* {
        yield PeopleState.loadSuccess(dashboard: c.dashboard);
      },
      pushMessage: (_PushMessage value) async* {
        yield PeopleState.loadMessage(message: value.message);
      },
    );
  }
}
