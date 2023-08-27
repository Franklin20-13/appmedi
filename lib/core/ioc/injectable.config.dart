// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i7;

import '../../features/authentication/domain/interfaces/i_auth.dart' as _i13;
import '../../features/authentication/domain/interfaces/i_session.dart' as _i11;
import '../../features/authentication/presentation/bloc/login/login_bloc.dart'
    as _i15;
import '../../features/authentication/presentation/bloc/session/session_bloc.dart'
    as _i17;
import '../../features/authentication/repository/user_repository.dart' as _i14;
import '../../features/authentication/repository/user_session.dart' as _i12;
import '../../features/home/domain/interfaces/i_people.dart' as _i9;
import '../../features/home/presentation/bloc/people/people_bloc.dart' as _i16;
import '../../features/home/presentation/cubit/home_cubit.dart' as _i5;
import '../../features/home/repository/people_repository.dart' as _i10;
import '../data/repository/people_firebase.dart' as _i6;
import '../data/repository/user_firebase.dart' as _i8;
import '../helpers/firestore_helper.dart' as _i4;
import 'external_module.dart' as _i18; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final externalModule = _$ExternalModule();
  gh.factory<_i3.FirebaseFirestore>(() => externalModule.firestore);
  gh.lazySingleton<_i4.FirestoreHelper>(
      () => _i4.FirestoreHelper(get<_i3.FirebaseFirestore>()));
  gh.factory<_i5.HomeCubit>(() => _i5.HomeCubit());
  gh.lazySingleton<_i6.PeopleFirestore>(
      () => _i6.PeopleFirestore(get<_i4.FirestoreHelper>()));
  await gh.factoryAsync<_i7.SharedPreferences>(
    () => externalModule.prefs,
    preResolve: true,
  );
  gh.lazySingleton<_i8.UserFirestore>(
      () => _i8.UserFirestore(get<_i4.FirestoreHelper>()));
  gh.lazySingleton<_i9.IPeopleRepository>(
      () => _i10.PeopleRepository(get<_i6.PeopleFirestore>()));
  gh.lazySingleton<_i11.ISession>(
      () => _i12.SessionRepositoryImpl(get<_i7.SharedPreferences>()));
  gh.lazySingleton<_i13.IUserRepository>(
      () => _i14.UserRepository(get<_i8.UserFirestore>()));
  gh.factory<_i15.LoginBloc>(() => _i15.LoginBloc(get<_i13.IUserRepository>()));
  gh.factory<_i16.PeopleBloc>(
      () => _i16.PeopleBloc(get<_i9.IPeopleRepository>()));
  gh.factory<_i17.SessionBloc>(() => _i17.SessionBloc(get<_i11.ISession>()));
  return get;
}

class _$ExternalModule extends _i18.ExternalModule {}
