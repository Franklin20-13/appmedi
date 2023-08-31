import 'package:app_medi/core/data/repository/person_firebase.dart';
import 'package:app_medi/core/data/repository/user_firebase.dart';
import 'package:app_medi/core/errors/failure.dart';
import 'package:app_medi/features/authentication/domain/entities/person.dart';
import 'package:app_medi/features/authentication/domain/entities/user.dart';
import 'package:app_medi/features/authentication/domain/interfaces/i_auth.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IUserRepository)
class UserRepository implements IUserRepository {
  final UserFirestore userFirestore;
  final PersonFirestore personFirestore;
  UserRepository(this.userFirestore,this.personFirestore);

  @override
  Future<Either<Failure, PersonEntity>> login(String user, String pass) async {
    try {
      final getUser = await userFirestore.loginUser(user, pass).get();
      if(getUser.docs.isEmpty){
        return left(const  ServerFailure('el usuario no existe'));
      }
      final userDocs = getUser.docs.first;
      final model = UserEntity.fromJson(userDocs.data() as Map<String, dynamic>, id: userDocs.id);
      final refUser=  userFirestore.getDocument(userDocs.id);
      final getPerson= await personFirestore.whereUser(refUser).get();
       if(getPerson.docs.isEmpty){
        return left(const  ServerFailure('No existe infromación del usuario'));
      }

      final  userInfo=  PersonEntity.fromJson(getPerson.docs.first.data()as Map<String, dynamic>,id: getPerson.docs.first.id, refUser: refUser, user: model);
      return right(userInfo);
    } catch (e) {
      return const Left(ServerFailure(""));
    }
  }
}
