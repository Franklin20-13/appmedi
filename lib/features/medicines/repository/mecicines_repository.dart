import 'package:app_medi/core/data/fields/medicines_fields.dart';
import 'package:app_medi/core/data/repository/medicines_firestore.dart';
import 'package:app_medi/core/data/repository/user_firebase.dart';
import 'package:app_medi/core/errors/failure.dart';
import 'package:app_medi/features/medicines/domain/models/medicament_model.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../authentication/domain/interfaces/i_session.dart';
import '../domain/interfaces/i_medicines.dart';

@LazySingleton(as: IMedicine)
class UserRepository implements IMedicine {
  final MedicineFirestore medicineFirestore;
  final ISession iSession;
  final UserFirestore userFirestore;
  UserRepository(this.medicineFirestore, this.iSession, this.userFirestore);

  @override
  Future<Either<Failure, String>> register(MedicamentModel model) async {
    try {
      if (model.id!.isNotEmpty) {
        await medicineFirestore
            .addField(MedicinesFields.name, model.name)
            .addField(MedicinesFields.typeMedicine, model.type)
            .update(model.id);
        return const Right("Medicamento actualizado");
      }
      final gerUserSesion = await iSession.getUserSesion();
      final gerDocumentRef =
          userFirestore.getDocument(gerUserSesion!.user!.id!);
      model.userRef = gerDocumentRef;
      final existMedicament =
          await medicineFirestore.whereExistMedicament(model.name).get();
      if (existMedicament.docs.isNotEmpty) {
        return const Left(ServerFailure("El medicamento  ya existe"));
      }
      await medicineFirestore.collection.add(mapMedicines(model));
      return const Right("Medicamento guardado");
    } catch (e) {
      return const Left(ServerFailure('Error al comunicarse con el servidor'));
    }
  }

  @override
  Stream<Either<Failure, List<MedicamentModel>>> getMedicines() async* {
    final gerUserSesion = await iSession.getUserSesion();
    final getDocumentRef = userFirestore.getDocument(gerUserSesion!.user!.id!);
    yield* medicineFirestore
        .whereMedicamentsForUser(getDocumentRef)
        .snapshots()
        .map((event) {
      final medicines = event.docs
          .map(
            (i) => MedicamentModel.fromJson(i.data() as Map<String, dynamic>,
                id: i.id, refUser: getDocumentRef),
          )
          .toList()
        ..sort((p1, p2) => p2.createDate!.compareTo(p1.createDate!));
      return right(medicines);
    });
  }

  @override
  Future<Either<Failure, String>> removeById(String id) async {
    try {
      await medicineFirestore.delete(id);
      return const Right("Medicamento eliminado");
    } catch (e) {
      return const Left(ServerFailure('Error al comunicarse con el servidor'));
    }
  }
}
