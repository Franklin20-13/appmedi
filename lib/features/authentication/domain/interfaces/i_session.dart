import 'package:app_medi/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

import '../entities/person.dart';

abstract class ISession {
  Future<Either<Failure, PersonEntity?>> logginIn(PersonEntity user);
  Future<Either<Failure, void>> logOut();
  Future<Either<Failure, PersonEntity?>> stateAuth();
  Future<PersonEntity?> getUserSesion();
}
