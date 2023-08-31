import 'package:app_medi/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

import '../entities/person.dart';
abstract class IUserRepository {
  Future<Either<Failure, PersonEntity>> login(String user, String pass);
}