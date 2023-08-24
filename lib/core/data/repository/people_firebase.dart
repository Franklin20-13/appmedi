import 'package:app_medi/core/data/fields/people_fields.dart';
import 'package:app_medi/core/data/repository/abstract_firestore.dart';
import 'package:app_medi/core/helpers/firestore_helper.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class PeopleFirestore extends AbstractFirestore {
  PeopleFirestore(FirestoreHelper helper) : super(helper);

  @override
  CollectionReference get collection => helper.peopleCollection;

  @override
  DocumentReference getDocument(String id) => collection.doc(id);

  @override
  void checkField(String field, value) {
    switch (field) {
      case PeopleFields.name:
        if (value is String) {
          data[field] = value;
        } else {
          throw TypeError();
        }
        break;

      default:
        throw ArgumentError();
    }
  }
}
