import 'package:app_medi/core/data/fields/user_fields.dart';
import 'package:app_medi/core/data/repository/abstract_firestore.dart';
import 'package:app_medi/core/helpers/firestore_helper.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class UserFirestore extends AbstractFirestore {
  UserFirestore(FirestoreHelper helper) : super(helper);

  @override
  CollectionReference get collection => helper.usersCollection;

  @override
  DocumentReference getDocument(String id) => collection.doc(id);

  @override
  void checkField(String field, value) {
    switch (field) {
      case UserFields.userName:
        if (value is String) {
          data[field] = value;
        } else {
          throw TypeError();
        }
        break;
      case UserFields.pass:
        if (value is String) {
          data[field] = value;
        } else {
          throw TypeError();
        }
        break;
      case UserFields.role:
        if (value is int) {
          data[field] = value;
        } else {
          throw TypeError();
        }
        break;

      default:
        throw ArgumentError();
    }
  }

  Query loginUser(String userName, String pass) => collection
      .where(UserFields.userName, isEqualTo: userName)
      .where(UserFields.pass, isEqualTo: pass);

  Query whereUserExist(String userName) =>
      collection.where(UserFields.userName, isEqualTo: userName);

  Query getDoctors() => collection.where(UserFields.role, isEqualTo: 1);
}
