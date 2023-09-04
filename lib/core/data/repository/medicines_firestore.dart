import 'package:app_medi/core/data/fields/medicines_fields.dart';
import 'package:app_medi/core/data/repository/abstract_firestore.dart';
import 'package:app_medi/core/helpers/firestore_helper.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class MedicineFirestore extends AbstractFirestore {
  MedicineFirestore(FirestoreHelper helper) : super(helper);

  @override
  CollectionReference get collection => helper.medicinesCollection;

  @override
  DocumentReference getDocument(String id) => collection.doc(id);

  @override
  void checkField(String field, value) {
    switch (field) {
      case MedicinesFields.name:
        if (value is String) {
          data[field] = value;
        } else {
          throw TypeError();
        }
        break;
      case MedicinesFields.typeMedicine:
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

  Query whereExistMedicament(String name, DocumentReference userRef) =>
      collection
          .where(MedicinesFields.name, isEqualTo: name)
          .where(MedicinesFields.userRef, isEqualTo: userRef);
  Query whereMedicamentsForUser(DocumentReference documentReference) =>
      collection.where(MedicinesFields.userRef, isEqualTo: documentReference);
}
