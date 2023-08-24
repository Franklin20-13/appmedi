import 'dart:convert';

import 'package:app_medi/core/errors/failure.dart';
import 'package:app_medi/features/authentication/domain/entities/user.dart';
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
  Future<Either<Failure, UserEntity?>> logginIn(UserEntity user) async {
    try {
      final dat = json.encode(mapUser(user));
      _preferences.setString(firstLoad, dat);
      final userEntity = _preferences.get(firstLoad) as String;
      final userEntityModel = parseUser(userEntity);
      return right(userEntityModel);
    } catch (e) {
      return const Left(ServerFailure('Error al guardar sesion de usuario'));
    }
  }

  UserEntity parseUser(String responseBody) {
    final map = jsonDecode(responseBody) as Map<String, dynamic>;
    UserEntity result = UserEntity.fromJson(map);
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
  Future<Either<Failure, UserEntity?>> stateAuth() async {
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
}
