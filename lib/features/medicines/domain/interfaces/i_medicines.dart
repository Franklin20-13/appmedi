import 'package:app_medi/core/errors/failure.dart';
import 'package:app_medi/features/medicines/domain/models/medicament_model.dart';
import 'package:dartz/dartz.dart';

abstract class IMedicine {
  Future<Either<Failure, String>> register(MedicamentModel model);
  Stream<Either<Failure, List<MedicamentModel>>> getMedicines();
  Future<Either<Failure, String>> removeById(String id);
}
