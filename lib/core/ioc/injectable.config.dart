// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i10;

import '../../features/authentication/domain/interfaces/i_auth.dart' as _i21;
import '../../features/authentication/domain/interfaces/i_person.dart' as _i15;
import '../../features/authentication/domain/interfaces/i_session.dart' as _i17;
import '../../features/authentication/presentation/bloc/login/login_bloc.dart'
    as _i23;
import '../../features/authentication/presentation/bloc/person/person_bloc.dart'
    as _i26;
import '../../features/authentication/presentation/bloc/session/session_bloc.dart'
    as _i27;
import '../../features/authentication/repository/person_repository.dart'
    as _i16;
import '../../features/authentication/repository/user_repository.dart' as _i22;
import '../../features/authentication/repository/user_session.dart' as _i18;
import '../../features/diary_treatment/domain/interfaces/i_treatment.dart'
    as _i19;
import '../../features/diary_treatment/presentation/bloc/get_recipes/get_recipes_bloc.dart'
    as _i29;
import '../../features/diary_treatment/presentation/bloc/medicament_detail/medicament_detail_bloc.dart'
    as _i24;
import '../../features/diary_treatment/presentation/bloc/treatament/treatament_bloc.dart'
    as _i28;
import '../../features/diary_treatment/repository/treatment_repository.dart'
    as _i20;
import '../../features/home/domain/interfaces/i_people.dart' as _i13;
import '../../features/home/presentation/bloc/people/people_bloc.dart' as _i25;
import '../../features/home/presentation/cubit/home_cubit.dart' as _i5;
import '../../features/home/repository/people_repository.dart' as _i14;
import '../../features/medicines/domain/interfaces/i_medicines.dart' as _i30;
import '../../features/medicines/presentation/bloc/get_medicines/get_medicines_bloc.dart'
    as _i33;
import '../../features/medicines/presentation/bloc/medicine/medicine_bloc.dart'
    as _i32;
import '../../features/medicines/repository/mecicines_repository.dart' as _i31;
import '../data/repository/medicines_firestore.dart' as _i6;
import '../data/repository/people_firebase.dart' as _i7;
import '../data/repository/person_firebase.dart' as _i8;
import '../data/repository/recipe_firebase.dart' as _i9;
import '../data/repository/treatment_firestore.dart' as _i11;
import '../data/repository/user_firebase.dart' as _i12;
import '../helpers/firestore_helper.dart' as _i4;
import 'external_module.dart' as _i34; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i9.RecipeFirestore>(
      () => _i9.RecipeFirestore(get<_i4.FirestoreHelper>()));
  await gh.factoryAsync<_i10.SharedPreferences>(
    () => externalModule.prefs,
    preResolve: true,
  );
  gh.lazySingleton<_i11.TreatmentFirestore>(
      () => _i11.TreatmentFirestore(get<_i4.FirestoreHelper>()));
  gh.lazySingleton<_i12.UserFirestore>(
      () => _i12.UserFirestore(get<_i4.FirestoreHelper>()));
  gh.lazySingleton<_i13.IPeopleRepository>(
      () => _i14.PeopleRepository(get<_i7.PeopleFirestore>()));
  gh.lazySingleton<_i15.IPerson>(() => _i16.PersonRepositoryImpl(
        get<_i12.UserFirestore>(),
        get<_i8.PersonFirestore>(),
      ));
  gh.lazySingleton<_i17.ISession>(
      () => _i18.SessionRepositoryImpl(get<_i10.SharedPreferences>()));
  gh.lazySingleton<_i19.ITreatment>(() => _i20.UserRepository(
        get<_i11.TreatmentFirestore>(),
        get<_i17.ISession>(),
        get<_i6.MedicineFirestore>(),
        get<_i12.UserFirestore>(),
        get<_i9.RecipeFirestore>(),
      ));
  gh.lazySingleton<_i21.IUserRepository>(() => _i22.UserRepository(
        get<_i12.UserFirestore>(),
        get<_i8.PersonFirestore>(),
      ));
  gh.factory<_i23.LoginBloc>(() => _i23.LoginBloc(get<_i21.IUserRepository>()));
  gh.factory<_i24.MedicamentDetailBloc>(
      () => _i24.MedicamentDetailBloc(get<_i19.ITreatment>()));
  gh.factory<_i25.PeopleBloc>(
      () => _i25.PeopleBloc(get<_i13.IPeopleRepository>()));
  gh.factory<_i26.PersonBloc>(() => _i26.PersonBloc(get<_i15.IPerson>()));
  gh.factory<_i27.SessionBloc>(() => _i27.SessionBloc(get<_i17.ISession>()));
  gh.factory<_i28.TreatamentBloc>(
      () => _i28.TreatamentBloc(get<_i19.ITreatment>()));
  gh.factory<_i29.GetRecipesBloc>(
      () => _i29.GetRecipesBloc(get<_i19.ITreatment>()));
  gh.lazySingleton<_i30.IMedicine>(() => _i31.UserRepository(
        get<_i6.MedicineFirestore>(),
        get<_i17.ISession>(),
        get<_i12.UserFirestore>(),
      ));
  gh.factory<_i32.MedicineBloc>(() => _i32.MedicineBloc(get<_i30.IMedicine>()));
  gh.factory<_i33.GetMedicinesBloc>(
      () => _i33.GetMedicinesBloc(get<_i30.IMedicine>()));
  return get;
}

class _$ExternalModule extends _i34.ExternalModule {}
