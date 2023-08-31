import 'dart:convert';

import 'package:app_medi/core/errors/failure.dart';
import 'package:app_medi/features/authentication/domain/entities/person.dart';
import 'package:app_medi/features/authentication/domain/interfaces/i_session.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: ISession)
class SessionRepositoryImpl implements ISession {
  static const firstLoad = "SESSION_APP";
  final SharedPreferences _preferences;
  SessionRepositoryImpl(this._preferences);
  @override
  Future<Either<Failure, PersonEntity?>> logginIn(PersonEntity user) async {
    try {
      final dat = json.encode(mapPersonLocale(user));
      _preferences.setString(firstLoad, dat);
      final userEntity = _preferences.get(firstLoad) as String;
      final userEntityModel = parseUser(userEntity);
      return right(userEntityModel);
    } catch (e) {
      return const Left(ServerFailure('Error al guardar sesion de usuario'));
    }
  }

  PersonEntity parseUser(String responseBody) {
    final map = jsonDecode(responseBody) as Map<String, dynamic>;
    PersonEntity result = PersonEntity.fromJson(map);
    return result;
  }

  @override
  Future<Either<Failure, void>> logOut() async {
    try {
      _preferences.remove(firstLoad);
      // ignore: void_checks
      return const Right(true);
    } catch (e) {
      return const Left(ServerFailure('Error al cerrar sesion'));
    }
  }

  @override
  Future<Either<Failure, PersonEntity?>> stateAuth() async {
    try {
      final userEntity = _preferences.get(firstLoad);
      if (userEntity == null) {
        _preferences.remove(firstLoad);
        return const Right(null);
      }
      final userEnitity = parseUser(userEntity as String);
      return Right(userEnitity);
    } catch (e) {
      return const Left(ServerFailure('Error al cerrar sesion'));
    }
  }

  @override
  Future<PersonEntity?> getUserSesion() async {
    try {
      final userEntity = _preferences.get(firstLoad);
      if (userEntity == null) {
        return null;
      }
      final userEnitity = parseUser(userEntity as String);
      return userEnitity;
    } catch (e) {
      return null;
    }
  }
}
