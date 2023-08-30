import 'package:app_medi/core/errors/failure.dart';
import 'package:app_medi/features/authentication/domain/entities/user.dart';
import 'package:dartz/dartz.dart';

abstract class ISession {
  Future<Either<Failure, UserEntity?>> logginIn(UserEntity user);
  Future<Either<Failure, void>> logOut();
  Future<Either<Failure, UserEntity?>> stateAuth();
  Future<UserEntity?> getUserSesion();
}
