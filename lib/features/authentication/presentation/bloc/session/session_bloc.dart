import 'package:app_medi/features/authentication/domain/entities/user.dart';
import 'package:app_medi/features/authentication/domain/interfaces/i_session.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
part 'session_event.dart';
part 'session_state.dart';

@injectable
class SessionBloc extends Bloc<SessionEvent, SessionState> {
  final ISession _repository;

  SessionBloc(this._repository) : super(InitialState()) {
    on<SessionEvent>(_onEventBloc);
  }
  void _onEventBloc(
    SessionEvent event,
    Emitter<SessionState> emit,
  ) async {
    if (event is LoggedIn) {
      final failureOrUser = await _repository.logginIn(event.user);
      failureOrUser.fold(
          (failure) => emit(Unauthenticated()),
          (user) =>
              emit(user != null ? Authenticated(user) : Unauthenticated()));
    }
    
    if (event is CheckedSession) {
      final failureOrUser = await _repository.stateAuth();
      failureOrUser.fold(
        (failure) => emit(Unauthenticated()),
        (state) => emit(
          state != null ? Authenticated(state) : Unauthenticated(),
        ),
      );
    }
    if (event is LoggedOut) {
      await _repository.logOut();
      emit(Unauthenticated());
    }
  }
}
