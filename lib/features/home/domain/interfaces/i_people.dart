import 'package:app_medi/core/errors/failure.dart';
import 'package:app_medi/features/home/domain/entities/people.dart';
import 'package:dartz/dartz.dart';

abstract class IPeopleRepository {
  Stream<Either<Failure, List<PeopleEntity>>> getPeople();
}