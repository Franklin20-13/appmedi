import 'package:app_medi/core/errors/failure.dart';
import 'package:app_medi/features/authentication/domain/entities/person.dart';
import 'package:app_medi/features/diary_treatment/domain/interfaces/i_treatment.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'getDoctors_state.dart';
part 'getDoctors_event.dart';
part 'getDoctors_bloc.freezed.dart';

@injectable
class GetDoctorsBloc extends Bloc<GetDoctorsEvent,GetDoctorsState>{
  final ITreatment iTreatment;
  GetDoctorsBloc(this.iTreatment) : super(const GetDoctorsState.initial());

  @override
  Stream<GetDoctorsState> mapEventToState(
    GetDoctorsEvent event,
  ) async* {
    yield* event.map(
      getDoctors: (e) async* {
        iTreatment.getDoctos().then((failureOrSlider) {
          failureOrSlider.fold(
            (l) {
              if (l is ServerFailure) {
                add(
                  GetDoctorsEvent.pushMessage(message: l.message),
                );
              }
            },
            (doctors) => add(
              GetDoctorsEvent.pushDoctors(doctors: doctors),
            ),
          );
        });
      },
      pushDoctors: (c) async* {
        yield GetDoctorsState.loadSuccess(doctors: c.doctors);
      },
      pushMessage: (c) async* {
        yield GetDoctorsState.loadMessage(message: c.message);
      },
    );
  }
}