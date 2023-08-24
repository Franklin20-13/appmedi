import 'package:app_medi/core/data/fields/people_fields.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class PeopleEntity {
  PeopleEntity({required this.id, required this.name});
  final String id;
  final String name;

  factory PeopleEntity.fromSnapshot(DocumentSnapshot snapshot) {
    return PeopleEntity(
      id: snapshot.id,
      name: snapshot.get(PeopleFields.name),
    );
  }
}
