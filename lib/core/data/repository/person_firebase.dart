import 'package:app_medi/core/data/fields/person_fields.dart';
import 'package:app_medi/core/data/repository/abstract_firestore.dart';
import 'package:app_medi/core/helpers/firestore_helper.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class PersonFirestore extends AbstractFirestore {
  PersonFirestore(FirestoreHelper helper) : super(helper);

  @override
  CollectionReference get collection => helper.personCollection;

  @override
  DocumentReference getDocument(String id) => collection.doc(id);

  @override
  void checkField(String field, value) {
    switch (field) {
      case PersonFields.name:
        if (value is String) {
          data[field] = value;
        } else {
          throw TypeError();
        }
        break;
      case PersonFields.lastName:
        if (value is String) {
          data[field] = value;
        } else {
          throw TypeError();
        }
        break;
      case PersonFields.refUser:
        if (value is DocumentReference) {
          data[field] = value;
        } else {
          throw TypeError();
        }
        break;
      default:
        throw ArgumentError();
    }
  }

  Query whereUser(DocumentReference userRef) =>
      collection.where(PersonFields.refUser, isEqualTo: userRef);
}
