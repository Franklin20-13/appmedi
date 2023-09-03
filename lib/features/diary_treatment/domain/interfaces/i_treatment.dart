import 'package:app_medi/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

import '../models/treatament_models.dart';

abstract class ITreatment {
  Future<Either<Failure, String>> register(TreatamentModels model);
}