import 'package:app_medi/core/data/fields/person_fields.dart';
import 'package:app_medi/features/authentication/domain/entities/user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class PersonEntity {
  PersonEntity({required this.name, required this.lastName, required this.user, this.userRef});
  String name;
  String lastName;
  UserEntity user;
  DocumentReference? userRef;
}

Map<String, dynamic> mapPerson(PersonEntity instance) => <String, dynamic>{
      PersonFields.name: instance.name,
      PersonFields.lastName: instance.lastName,
      PersonFields.refUser: instance.userRef,
    };