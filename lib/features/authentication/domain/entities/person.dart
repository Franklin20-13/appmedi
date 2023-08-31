import 'package:app_medi/core/data/fields/person_fields.dart';
import 'package:app_medi/features/authentication/domain/entities/user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class PersonEntity {
  PersonEntity(
      {this.id,
      required this.name,
      required this.lastName,
      this.user,
      this.userRef});
  String? id;
  String name;
  String lastName;
  UserEntity? user;
  DocumentReference? userRef;
  factory PersonEntity.fromJson(Map<String, dynamic> json,
      {String? id, DocumentReference? refUser, UserEntity? user}) {
    return PersonEntity(
      id: json.containsKey(PersonFields.id) ? json[PersonFields.id] : id ?? '',
      name: json.containsKey(PersonFields.name) ? json[PersonFields.name] : '',
      lastName: json.containsKey(PersonFields.lastName)
          ? json[PersonFields.lastName]
          : '',
      userRef: refUser,
      user: user ??
          (json.containsKey("user") ? UserEntity.fromJson(json['user']) : null),
    );
  }
}

Map<String, dynamic> mapPerson(PersonEntity instance) => <String, dynamic>{
      PersonFields.name: instance.name,
      PersonFields.lastName: instance.lastName,
      PersonFields.refUser: instance.userRef,
    };
Map<String, dynamic> mapPersonLocale(PersonEntity instance) =>
    <String, dynamic>{
      PersonFields.id: instance.id,
      PersonFields.name: instance.name,
      PersonFields.lastName: instance.lastName,
      'user': mapUser(instance.user!),
    };
