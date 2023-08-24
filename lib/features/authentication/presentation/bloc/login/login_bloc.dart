import 'package:app_medi/core/errors/failure.dart';
import 'package:app_medi/features/authentication/domain/interfaces/i_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/entities/user.dart';

part 'login_event.dart';
part 'login_state.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final IUserRepository _loginRepository;
  LoginBloc(this._loginRepository)
      : super(const Initial(showOtherWays: false)) {
    on<LoginEvent>(_onIncrement);
  }
  void _onIncrement(
    LoginEvent event,
    Emitter<LoginState> emit,
  ) async {
    if (event is ShowOtherWaysPressed) {
      emit(const Initial(showOtherWays: true));
    } else if (event is LoginUser) {
      emit(Loading());
      final failureOrUser =
          await _loginRepository.login(event.userName, event.pass);
      failureOrUser.fold(
        (failure) {
          if (failure is ServerFailure) {
            emit(LoginFail(error: failure.message));
          }
        },
        (user) {
          emit(Successfully(user: user));
        },
      );
    }
  }
}
