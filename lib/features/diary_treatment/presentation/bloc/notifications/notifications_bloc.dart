import 'package:app_medi/core/errors/failure.dart';
import 'package:app_medi/features/diary_treatment/domain/interfaces/i_treatment.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../background/DataBase/collectons/notification_collection.dart';

part 'notifications_state.dart';
part 'notifications_event.dart';
part 'notifications_bloc.freezed.dart';

@injectable
class NotificationsBloc extends Bloc<NotificationsEvent,NotificationsState>{
  final ITreatment iTreatment;
  NotificationsBloc(this.iTreatment) : super(const NotificationsState.initial());

  @override
  Stream<NotificationsState> mapEventToState(
    NotificationsEvent event,
  ) async* {
    yield* event.map(
      getNotifications: (e) async* {
        iTreatment.getNotifications().then((failureOrSlider) {
          failureOrSlider.fold(
            (l) {
              if (l is ServerFailure) {
                add(
                  NotificationsEvent.pushMessage(message: l.message),
                );
              }
            },
            (items) => add(
              NotificationsEvent.pushMedicamentItemss(items: items),
            ),
          );
        });
      },
      pushMedicamentItemss: (c) async* {
        yield NotificationsState.loadSuccess(items: c.items);
      },
      pushMessage: (c) async* {
        yield NotificationsState.loadMessage(message: c.message);
      },
    );
  }
}