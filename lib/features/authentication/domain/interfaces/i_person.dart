import 'package:app_medi/features/authentication/domain/entities/person.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';

abstract class IPerson {
  Future<Either<Failure, String>> register(PersonEntity model);
}
