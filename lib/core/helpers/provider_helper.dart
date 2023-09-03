import 'package:app_medi/features/authentication/presentation/bloc/person/person_bloc.dart';
import 'package:app_medi/features/medicines/presentation/bloc/get_medicines/get_medicines_bloc.dart';
import 'package:app_medi/features/medicines/presentation/bloc/medicine/medicine_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/authentication/presentation/bloc/login/login_bloc.dart';
import '../../features/authentication/presentation/bloc/session/session_bloc.dart';
import '../../features/home/presentation/bloc/people/people_bloc.dart';
import '../../features/home/presentation/cubit/home_cubit.dart';
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
    BlocProvider<HomeCubit>(
      create: (_) => getIt<HomeCubit>(),
    ),
    BlocProvider<PersonBloc>(
      create: (_) => getIt<PersonBloc>(),
    ),
    BlocProvider<MedicineBloc>(
      create: (_) => getIt<MedicineBloc>(),
    ),
     BlocProvider<GetMedicinesBloc>(
      create: (_) => getIt<GetMedicinesBloc>(),
    ),
  ];
}
