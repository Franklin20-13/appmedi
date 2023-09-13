// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i12;

import '../../features/authentication/domain/interfaces/i_auth.dart' as _i23;
import '../../features/authentication/domain/interfaces/i_person.dart' as _i17;
import '../../features/authentication/domain/interfaces/i_session.dart' as _i19;
import '../../features/authentication/presentation/bloc/login/login_bloc.dart'
    as _i25;
import '../../features/authentication/presentation/bloc/person/person_bloc.dart'
    as _i29;
import '../../features/authentication/presentation/bloc/session/session_bloc.dart'
    as _i30;
import '../../features/authentication/repository/person_repository.dart'
    as _i18;
import '../../features/authentication/repository/user_repository.dart' as _i24;
import '../../features/authentication/repository/user_session.dart' as _i20;
import '../../features/background/DataBase/query/query_notification.dart'
    as _i9;
import '../../features/background/services/service_isar.dart' as _i11;
import '../../features/diary_treatment/domain/interfaces/i_treatment.dart'
    as _i21;
import '../../features/diary_treatment/presentation/bloc/get_recipes/get_recipes_bloc.dart'
    as _i33;
import '../../features/diary_treatment/presentation/bloc/getDoctors/getDoctors_bloc.dart'
    as _i32;
import '../../features/diary_treatment/presentation/bloc/medicament_detail/medicament_detail_bloc.dart'
    as _i26;
import '../../features/diary_treatment/presentation/bloc/notifications/notifications_bloc.dart'
    as _i27;
import '../../features/diary_treatment/presentation/bloc/treatament/treatament_bloc.dart'
    as _i31;
import '../../features/diary_treatment/repository/treatment_repository.dart'
    as _i22;
import '../../features/doctor/domain/interfaces/i_doctor.dart' as _i34;
import '../../features/doctor/presentation/bloc/recipes/recipes_bloc.dart'
    as _i39;
import '../../features/doctor/repository/doctor_repository.dart' as _i35;
import '../../features/home/domain/interfaces/i_people.dart' as _i15;
import '../../features/home/presentation/bloc/people/people_bloc.dart' as _i28;
import '../../features/home/presentation/cubit/home_cubit.dart' as _i5;
import '../../features/home/repository/people_repository.dart' as _i16;
import '../../features/medicines/domain/interfaces/i_medicines.dart' as _i36;
import '../../features/medicines/presentation/bloc/get_medicines/get_medicines_bloc.dart'
    as _i40;
import '../../features/medicines/presentation/bloc/medicine/medicine_bloc.dart'
    as _i38;
import '../../features/medicines/repository/mecicines_repository.dart' as _i37;
import '../data/repository/medicines_firestore.dart' as _i6;
import '../data/repository/people_firebase.dart' as _i7;
import '../data/repository/person_firebase.dart' as _i8;
import '../data/repository/recipe_firebase.dart' as _i10;
import '../data/repository/treatment_firestore.dart' as _i13;
import '../data/repository/user_firebase.dart' as _i14;
import '../helpers/firestore_helper.dart' as _i4;
import 'external_module.dart' as _i41; // ignore_for_file: unnecessary_lambdas

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
  gh.factory<_i9.QueryNotification>(() => _i9.QueryNotification());
  gh.lazySingleton<_i10.RecipeFirestore>(
      () => _i10.RecipeFirestore(get<_i4.FirestoreHelper>()));
  gh.lazySingleton<_i11.ServiceIsar>(() => _i11.ServiceIsar());
  await gh.factoryAsync<_i12.SharedPreferences>(
    () => externalModule.prefs,
    preResolve: true,
  );
  gh.lazySingleton<_i13.TreatmentFirestore>(
      () => _i13.TreatmentFirestore(get<_i4.FirestoreHelper>()));
  gh.lazySingleton<_i14.UserFirestore>(
      () => _i14.UserFirestore(get<_i4.FirestoreHelper>()));
  gh.lazySingleton<_i15.IPeopleRepository>(
      () => _i16.PeopleRepository(get<_i7.PeopleFirestore>()));
  gh.lazySingleton<_i17.IPerson>(() => _i18.PersonRepositoryImpl(
        get<_i14.UserFirestore>(),
        get<_i8.PersonFirestore>(),
      ));
  gh.lazySingleton<_i19.ISession>(
      () => _i20.SessionRepositoryImpl(get<_i12.SharedPreferences>()));
  gh.lazySingleton<_i21.ITreatment>(() => _i22.UserRepository(
        get<_i13.TreatmentFirestore>(),
        get<_i19.ISession>(),
        get<_i6.MedicineFirestore>(),
        get<_i14.UserFirestore>(),
        get<_i10.RecipeFirestore>(),
        get<_i8.PersonFirestore>(),
      ));
  gh.lazySingleton<_i23.IUserRepository>(() => _i24.UserRepository(
        get<_i14.UserFirestore>(),
        get<_i8.PersonFirestore>(),
      ));
  gh.factory<_i25.LoginBloc>(() => _i25.LoginBloc(get<_i23.IUserRepository>()));
  gh.factory<_i26.MedicamentDetailBloc>(
      () => _i26.MedicamentDetailBloc(get<_i21.ITreatment>()));
  gh.factory<_i27.NotificationsBloc>(
      () => _i27.NotificationsBloc(get<_i21.ITreatment>()));
  gh.factory<_i28.PeopleBloc>(() => _i28.PeopleBloc(get<_i21.ITreatment>()));
  gh.factory<_i29.PersonBloc>(() => _i29.PersonBloc(get<_i17.IPerson>()));
  gh.factory<_i30.SessionBloc>(() => _i30.SessionBloc(get<_i19.ISession>()));
  gh.factory<_i31.TreatamentBloc>(
      () => _i31.TreatamentBloc(get<_i21.ITreatment>()));
  gh.factory<_i32.GetDoctorsBloc>(
      () => _i32.GetDoctorsBloc(get<_i21.ITreatment>()));
  gh.factory<_i33.GetRecipesBloc>(
      () => _i33.GetRecipesBloc(get<_i21.ITreatment>()));
  gh.lazySingleton<_i34.IDoctor>(() => _i35.DoctorRepository(
        get<_i13.TreatmentFirestore>(),
        get<_i19.ISession>(),
        get<_i6.MedicineFirestore>(),
        get<_i14.UserFirestore>(),
        get<_i10.RecipeFirestore>(),
        get<_i8.PersonFirestore>(),
      ));
  gh.lazySingleton<_i36.IMedicine>(() => _i37.UserRepository(
        get<_i6.MedicineFirestore>(),
        get<_i19.ISession>(),
        get<_i14.UserFirestore>(),
      ));
  gh.factory<_i38.MedicineBloc>(() => _i38.MedicineBloc(get<_i36.IMedicine>()));
  gh.factory<_i39.RecipesBloc>(() => _i39.RecipesBloc(get<_i34.IDoctor>()));
  gh.factory<_i40.GetMedicinesBloc>(
      () => _i40.GetMedicinesBloc(get<_i36.IMedicine>()));
  return get;
}

class _$ExternalModule extends _i41.ExternalModule {}
