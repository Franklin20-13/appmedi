import 'package:app_medi/core/data/repository/person_firebase.dart';
import 'package:app_medi/core/data/repository/user_firebase.dart';
import 'package:app_medi/core/errors/failure.dart';
import 'package:app_medi/features/authentication/domain/entities/person.dart';
import 'package:app_medi/features/authentication/domain/interfaces/i_person.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../domain/entities/user.dart';

@LazySingleton(as: IPerson)
class PersonRepositoryImpl implements IPerson {
  final UserFirestore userFirestore;
  final PersonFirestore personFirestore;
  PersonRepositoryImpl(this.userFirestore, this.personFirestore);
  @override
  Future<Either<Failure, String>> register(PersonEntity model) async {
    try {
      final userExist =
          await userFirestore.whereUserExist(model.user.userName).get();
      if (userExist.docs.isNotEmpty) {
        return const Left(ServerFailure("Este usuario ya esta en uso "));
      }
      await userFirestore.collection.add(mapUser2(model.user));
      final userExist2 =
          await userFirestore.whereUserExist(model.user.userName).get();
      if (userExist2.docs.length > 1) {
        return const Left(ServerFailure("Se encontro  mas de un usuario"));
      }
      final refUser = userFirestore.getDocument(userExist2.docs.first.id);
      model.userRef = refUser;
      await personFirestore.collection.add(mapPerson(model));
      return const Right("Usuario registrado Exitosamente");
    } catch (e) {
      return const Left(ServerFailure("Error al comunicarse con el servidor"));
    }
  }
}
