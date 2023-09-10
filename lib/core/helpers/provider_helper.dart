import 'package:app_medi/features/authentication/presentation/bloc/person/person_bloc.dart';
import 'package:app_medi/features/diary_treatment/presentation/bloc/medicament_detail/medicament_detail_bloc.dart';
import 'package:app_medi/features/diary_treatment/presentation/bloc/notifications/notifications_bloc.dart';
import 'package:app_medi/features/medicines/presentation/bloc/get_medicines/get_medicines_bloc.dart';
import 'package:app_medi/features/medicines/presentation/bloc/medicine/medicine_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/authentication/presentation/bloc/login/login_bloc.dart';
import '../../features/authentication/presentation/bloc/session/session_bloc.dart';
import '../../features/diary_treatment/presentation/bloc/get_recipes/get_recipes_bloc.dart';
import '../../features/diary_treatment/presentation/bloc/treatament/treatament_bloc.dart';
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
    BlocProvider<TreatamentBloc>(
      create: (_) => getIt<TreatamentBloc>(),
    ),
    BlocProvider<GetRecipesBloc>(
      create: (_) => getIt<GetRecipesBloc>(),
    ),
    BlocProvider<MedicamentDetailBloc>(
      create: (_) => getIt<MedicamentDetailBloc>(),
    ),
    BlocProvider<NotificationsBloc>(
      create: (_) => getIt<NotificationsBloc>(),
    ),
  ];
}
