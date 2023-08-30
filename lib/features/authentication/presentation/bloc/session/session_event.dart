part of 'session_bloc.dart';

abstract class SessionEvent extends Equatable {
  const SessionEvent();

  @override
  List<Object> get props => [];
}

class Begin extends SessionEvent {}

class LoggedOut extends SessionEvent {}

class CheckedSession extends SessionEvent {}
class LoggedIn extends SessionEvent {
  final UserEntity user;

  const LoggedIn(this.user);

  @override
  List<Object> get props => [user.id!];
}
