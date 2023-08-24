import 'package:app_medi/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

import '../entities/user.dart';

abstract class IUserRepository {
  Future<Either<Failure, UserEntity>> login(String user, String pass);
}