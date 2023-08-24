import 'package:app_medi/core/data/repository/user_firebase.dart';
import 'package:app_medi/core/errors/failure.dart';
import 'package:app_medi/features/authentication/domain/entities/user.dart';
import 'package:app_medi/features/authentication/domain/interfaces/i_auth.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IUserRepository)
class UserRepository implements IUserRepository {
  final UserFirestore userFirestore;
  UserRepository(this.userFirestore);

  @override
  Future<Either<Failure, UserEntity>> login(String user, String pass) async {
    try {
      final getUser = await userFirestore.whereUserExist(user, pass).get();
      if(getUser.docs.isEmpty){
        return left(const  ServerFailure('el usuario no existe'));
      }
      final userDocs = getUser.docs.first.data();
      final model = UserEntity.fromJson(userDocs as Map<String, dynamic>);
      return right(model);
    } catch (e) {
      return const Left(ServerFailure(""));
    }
  }
}
