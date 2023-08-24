part of 'session_bloc.dart';

class SessionState extends Equatable {
  const SessionState();
  @override
  List<Object> get props => [];
}

class InitialState extends SessionState {}

class Unauthenticated extends SessionState {}

class IsIntroductory extends SessionState {}

class NotVerifyUser extends SessionState {}

class Authenticated extends SessionState {
  final UserEntity user;

  const Authenticated(this.user);

  @override
  List<Object> get props => [user.id];
}
