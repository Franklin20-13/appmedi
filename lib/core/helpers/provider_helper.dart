import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/authentication/presentation/bloc/login/login_bloc.dart';
import '../../features/authentication/presentation/bloc/session/session_bloc.dart';
import '../../features/home/presentation/bloc/people/people_bloc.dart';
import '../ioc/injectable.dart';

class BlocProviderHelper {
  final providers = [
    BlocProvider<PeopleBloc>(
      create: (_) => getIt<PeopleBloc>(),
    ),
    BlocProvider<LoginBloc>(
      create: (_) => getIt<LoginBloc>(),
    ),
    BlocProvider<SessionBloc>(
      create: (_) => getIt<SessionBloc>()..add(CheckedSession()),
    ),
  ];
}
