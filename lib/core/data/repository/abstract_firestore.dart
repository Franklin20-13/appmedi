import 'package:app_medi/core/helpers/firestore_helper.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

abstract class AbstractFirestore {
  final FirestoreHelper helper;
  final Map<String, dynamic> data = {};

  AbstractFirestore(this.helper);

  CollectionReference get collection;
  DocumentReference getDocument(String id);
  Future<DocumentSnapshot> getSnapshot(String? id) async {
    clear();
    final snapshot = await getDocument(id!).get();
    final valueSnapshot = snapshot.data();
    if (valueSnapshot != null) {
      data.addAll(snapshot.data() as Map<String, dynamic>);
    }
    return snapshot;
  }

  AbstractFirestore addField(String field, dynamic value) {
    if (value != null) {
      checkField(field, value);
    }
    return this;
  }

  void checkField(String field, dynamic value);

  Future<DocumentReference?> add() async {
    try {
      final reference = await collection.add(data);
      clear();
      return reference;
    } catch (e) {
      return null;
    }
  }

  Future<bool> set(String? id) async {
    try {
      await getDocument(id!).set(data);
      clear();
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> update(String? id) async {
    try {
      await getDocument(id!).update(data);
      clear();
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> delete(String id) async {
    try {
      await getDocument(id).delete();
      clear();
      return true;
    } catch (e) {
      return false;
    }
  }

  void clear() {
    data.clear();
  }
}
