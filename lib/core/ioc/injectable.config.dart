// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i6;

import '../../features/authentication/domain/interfaces/i_auth.dart' as _i12;
import '../../features/authentication/domain/interfaces/i_session.dart' as _i10;
import '../../features/authentication/presentation/bloc/login/login_bloc.dart'
    as _i14;
import '../../features/authentication/presentation/bloc/session/session_bloc.dart'
    as _i16;
import '../../features/authentication/repository/user_repository.dart' as _i13;
import '../../features/authentication/repository/user_session.dart' as _i11;
import '../../features/home/domain/interfaces/i_people.dart' as _i8;
import '../../features/home/presentation/bloc/people/people_bloc.dart' as _i15;
import '../../features/home/repository/people_repository.dart' as _i9;
import '../data/repository/people_firebase.dart' as _i5;
import '../data/repository/user_firebase.dart' as _i7;
import '../helpers/firestore_helper.dart' as _i4;
import 'external_module.dart' as _i17; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i5.PeopleFirestore>(
      () => _i5.PeopleFirestore(get<_i4.FirestoreHelper>()));
  await gh.factoryAsync<_i6.SharedPreferences>(
    () => externalModule.prefs,
    preResolve: true,
  );
  gh.lazySingleton<_i7.UserFirestore>(
      () => _i7.UserFirestore(get<_i4.FirestoreHelper>()));
  gh.lazySingleton<_i8.IPeopleRepository>(
      () => _i9.PeopleRepository(get<_i5.PeopleFirestore>()));
  gh.lazySingleton<_i10.ISession>(
      () => _i11.SessionRepositoryImpl(get<_i6.SharedPreferences>()));
  gh.lazySingleton<_i12.IUserRepository>(
      () => _i13.UserRepository(get<_i7.UserFirestore>()));
  gh.factory<_i14.LoginBloc>(() => _i14.LoginBloc(get<_i12.IUserRepository>()));
  gh.factory<_i15.PeopleBloc>(
      () => _i15.PeopleBloc(get<_i8.IPeopleRepository>()));
  gh.factory<_i16.SessionBloc>(() => _i16.SessionBloc(get<_i10.ISession>()));
  return get;
}

class _$ExternalModule extends _i17.ExternalModule {}
