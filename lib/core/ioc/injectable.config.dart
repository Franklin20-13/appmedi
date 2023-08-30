// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i8;

import '../../features/authentication/domain/interfaces/i_auth.dart' as _i16;
import '../../features/authentication/domain/interfaces/i_person.dart' as _i12;
import '../../features/authentication/domain/interfaces/i_session.dart' as _i14;
import '../../features/authentication/presentation/bloc/login/login_bloc.dart'
    as _i18;
import '../../features/authentication/presentation/bloc/person/person_bloc.dart'
    as _i20;
import '../../features/authentication/presentation/bloc/session/session_bloc.dart'
    as _i21;
import '../../features/authentication/repository/person_repository.dart'
    as _i13;
import '../../features/authentication/repository/user_repository.dart' as _i17;
import '../../features/authentication/repository/user_session.dart' as _i15;
import '../../features/home/domain/interfaces/i_people.dart' as _i10;
import '../../features/home/presentation/bloc/people/people_bloc.dart' as _i19;
import '../../features/home/presentation/cubit/home_cubit.dart' as _i5;
import '../../features/home/repository/people_repository.dart' as _i11;
import '../data/repository/people_firebase.dart' as _i6;
import '../data/repository/person_firebase.dart' as _i7;
import '../data/repository/user_firebase.dart' as _i9;
import '../helpers/firestore_helper.dart' as _i4;
import 'external_module.dart' as _i22; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i7.PersonFirestore>(
      () => _i7.PersonFirestore(get<_i4.FirestoreHelper>()));
  await gh.factoryAsync<_i8.SharedPreferences>(
    () => externalModule.prefs,
    preResolve: true,
  );
  gh.lazySingleton<_i9.UserFirestore>(
      () => _i9.UserFirestore(get<_i4.FirestoreHelper>()));
  gh.lazySingleton<_i10.IPeopleRepository>(
      () => _i11.PeopleRepository(get<_i6.PeopleFirestore>()));
  gh.lazySingleton<_i12.IPerson>(() => _i13.PersonRepositoryImpl(
        get<_i9.UserFirestore>(),
        get<_i7.PersonFirestore>(),
      ));
  gh.lazySingleton<_i14.ISession>(
      () => _i15.SessionRepositoryImpl(get<_i8.SharedPreferences>()));
  gh.lazySingleton<_i16.IUserRepository>(
      () => _i17.UserRepository(get<_i9.UserFirestore>()));
  gh.factory<_i18.LoginBloc>(() => _i18.LoginBloc(get<_i16.IUserRepository>()));
  gh.factory<_i19.PeopleBloc>(
      () => _i19.PeopleBloc(get<_i10.IPeopleRepository>()));
  gh.factory<_i20.PersonBloc>(() => _i20.PersonBloc(get<_i12.IPerson>()));
  gh.factory<_i21.SessionBloc>(() => _i21.SessionBloc(get<_i14.ISession>()));
  return get;
}

class _$ExternalModule extends _i22.ExternalModule {}
