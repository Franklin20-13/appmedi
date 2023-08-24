import 'package:app_medi/core/data/repository/people_firebase.dart';
import 'package:app_medi/core/errors/failure.dart';
import 'package:app_medi/features/home/domain/entities/people.dart';
import 'package:app_medi/features/home/domain/interfaces/i_people.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IPeopleRepository)
class PeopleRepository implements IPeopleRepository {
  final PeopleFirestore peopleFirestore;
  PeopleRepository(this.peopleFirestore);
  @override
  Stream<Either<Failure, List<PeopleEntity>>> getPeople() {
    return peopleFirestore.collection.snapshots().map((s) {
      List<PeopleEntity> peoples = [];
      for (var item in s.docs) {
        peoples.add(PeopleEntity.fromSnapshot(item));
      }
      return right(peoples);
    });
  }
}
