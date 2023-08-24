part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class LoginUser extends LoginEvent {
  final String userName;
  final String pass;
  const LoginUser(this.userName, this.pass);

  @override
  List<Object> get props => [userName, pass];
}

class ShowOtherWaysPressed extends LoginEvent {}
