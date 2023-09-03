import 'package:app_medi/core/data/repository/medicines_firestore.dart';
import 'package:app_medi/core/data/repository/treatment_firestore.dart';
import 'package:app_medi/core/errors/failure.dart';
import 'package:app_medi/features/authentication/domain/interfaces/i_session.dart';
import 'package:app_medi/features/diary_treatment/domain/models/treatament_models.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../core/data/repository/user_firebase.dart';
import '../domain/interfaces/i_treatment.dart';

@LazySingleton(as: ITreatment)
class UserRepository implements ITreatment {
  final TreatmentFirestore  treatmentFirestore;
  final  ISession iSession;
  final MedicineFirestore medicineFirestore;
  final UserFirestore userFirestore;
  UserRepository(this.treatmentFirestore,this.iSession, this.medicineFirestore, this.userFirestore);
  @override
  Future<Either<Failure, String>> register(TreatamentModels model)async{
    try{
      final  user= await iSession.getUserSesion();
      final refUser= userFirestore.getDocument(user!.id!);
      model.userRef= refUser;
      if(model.medicamentId==null){
        return const Left(ServerFailure("Seleccione el medicamento"));
      }

      final refMedicine= medicineFirestore.getDocument(model.medicamentId!);
      if(refMedicine.id.isEmpty){
        return const Left(ServerFailure("No se encontro el medicamento en el servidor"));
      }
      model.medicRef= refMedicine;
      final  existMedicine=  await treatmentFirestore.whereExistMedicine(refMedicine).get();
      if(existMedicine.docs.isNotEmpty){
        return const Left(ServerFailure("El medicamento ya existe"));
      }

      await treatmentFirestore.collection.add(mapTreatament(model));

      return const Right("Tratamiento Guardado");

    } catch (e) {
      return const Left(ServerFailure('Error al comunicarse con el servidor'));
    }
  }
}