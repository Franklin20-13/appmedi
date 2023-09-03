// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i9;

import '../../features/authentication/domain/interfaces/i_auth.dart' as _i20;
import '../../features/authentication/domain/interfaces/i_person.dart' as _i14;
import '../../features/authentication/domain/interfaces/i_session.dart' as _i16;
import '../../features/authentication/presentation/bloc/login/login_bloc.dart'
    as _i22;
import '../../features/authentication/presentation/bloc/person/person_bloc.dart'
    as _i24;
import '../../features/authentication/presentation/bloc/session/session_bloc.dart'
    as _i25;
import '../../features/authentication/repository/person_repository.dart'
    as _i15;
import '../../features/authentication/repository/user_repository.dart' as _i21;
import '../../features/authentication/repository/user_session.dart' as _i17;
import '../../features/diary_treatment/domain/interfaces/i_treatment.dart'
    as _i18;
import '../../features/diary_treatment/presentation/bloc/treatament/treatament_bloc.dart'
    as _i26;
import '../../features/diary_treatment/repository/treatment_repository.dart'
    as _i19;
import '../../features/home/domain/interfaces/i_people.dart' as _i12;
import '../../features/home/presentation/bloc/people/people_bloc.dart' as _i23;
import '../../features/home/presentation/cubit/home_cubit.dart' as _i5;
import '../../features/home/repository/people_repository.dart' as _i13;
import '../../features/medicines/domain/interfaces/i_medicines.dart' as _i27;
import '../../features/medicines/presentation/bloc/get_medicines/get_medicines_bloc.dart'
    as _i30;
import '../../features/medicines/presentation/bloc/medicine/medicine_bloc.dart'
    as _i29;
import '../../features/medicines/repository/mecicines_repository.dart' as _i28;
import '../data/repository/medicines_firestore.dart' as _i6;
import '../data/repository/people_firebase.dart' as _i7;
import '../data/repository/person_firebase.dart' as _i8;
import '../data/repository/treatment_firestore.dart' as _i10;
import '../data/repository/user_firebase.dart' as _i11;
import '../helpers/firestore_helper.dart' as _i4;
import 'external_module.dart' as _i31; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i6.MedicineFirestore>(
      () => _i6.MedicineFirestore(get<_i4.FirestoreHelper>()));
  gh.lazySingleton<_i7.PeopleFirestore>(
      () => _i7.PeopleFirestore(get<_i4.FirestoreHelper>()));
  gh.lazySingleton<_i8.PersonFirestore>(
      () => _i8.PersonFirestore(get<_i4.FirestoreHelper>()));
  await gh.factoryAsync<_i9.SharedPreferences>(
    () => externalModule.prefs,
    preResolve: true,
  );
  gh.lazySingleton<_i10.TreatmentFirestore>(
      () => _i10.TreatmentFirestore(get<_i4.FirestoreHelper>()));
  gh.lazySingleton<_i11.UserFirestore>(
      () => _i11.UserFirestore(get<_i4.FirestoreHelper>()));
  gh.lazySingleton<_i12.IPeopleRepository>(
      () => _i13.PeopleRepository(get<_i7.PeopleFirestore>()));
  gh.lazySingleton<_i14.IPerson>(() => _i15.PersonRepositoryImpl(
        get<_i11.UserFirestore>(),
        get<_i8.PersonFirestore>(),
      ));
  gh.lazySingleton<_i16.ISession>(
      () => _i17.SessionRepositoryImpl(get<_i9.SharedPreferences>()));
  gh.lazySingleton<_i18.ITreatment>(() => _i19.UserRepository(
        get<_i10.TreatmentFirestore>(),
        get<_i16.ISession>(),
        get<_i6.MedicineFirestore>(),
        get<_i11.UserFirestore>(),
      ));
  gh.lazySingleton<_i20.IUserRepository>(() => _i21.UserRepository(
        get<_i11.UserFirestore>(),
        get<_i8.PersonFirestore>(),
      ));
  gh.factory<_i22.LoginBloc>(() => _i22.LoginBloc(get<_i20.IUserRepository>()));
  gh.factory<_i23.PeopleBloc>(
      () => _i23.PeopleBloc(get<_i12.IPeopleRepository>()));
  gh.factory<_i24.PersonBloc>(() => _i24.PersonBloc(get<_i14.IPerson>()));
  gh.factory<_i25.SessionBloc>(() => _i25.SessionBloc(get<_i16.ISession>()));
  gh.factory<_i26.TreatamentBloc>(
      () => _i26.TreatamentBloc(get<_i18.ITreatment>()));
  gh.lazySingleton<_i27.IMedicine>(() => _i28.UserRepository(
        get<_i6.MedicineFirestore>(),
        get<_i16.ISession>(),
        get<_i11.UserFirestore>(),
      ));
  gh.factory<_i29.MedicineBloc>(() => _i29.MedicineBloc(get<_i27.IMedicine>()));
  gh.factory<_i30.GetMedicinesBloc>(
      () => _i30.GetMedicinesBloc(get<_i27.IMedicine>()));
  return get;
}

class _$ExternalModule extends _i31.ExternalModule {}
