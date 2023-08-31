part of 'login_bloc.dart';

abstract class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object> get props => [];
}

class Initial extends LoginState {
  final bool showOtherWays;

  const Initial({required this.showOtherWays});

  @override
  List<Object> get props => [showOtherWays];
}

class LoginFail extends LoginState {
  final String error;

  const LoginFail({required this.error});

  @override
  List<Object> get props => [error];
}

class Successfully extends LoginState {
  final PersonEntity user;
  const Successfully({required this.user});

  @override
  List<Object> get props => [user];
}

class Loading extends LoginState {}
