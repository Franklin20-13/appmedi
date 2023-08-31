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
      final gerUserSesion = await iSession.getUserSesion();
      final gerDocumentRef =
          userFirestore.getDocument(gerUserSesion!.user!.id!);
      model.userRef = gerDocumentRef;
      final  existMedicament=await  medicineFirestore.whereExistMedicament(model.name).get();
      if(existMedicament.docs.isNotEmpty){
        return const Left(ServerFailure("El medicamento  ya existe"));
      }
      await medicineFirestore.collection.add(mapMedicines(model));
      return const Right("Medicamento guardado");
    } catch (e) {
      return const Left(ServerFailure('Error al comunicarse con el servidor'));
    }
  }
}
