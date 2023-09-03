import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class FirestoreHelper {
  final FirebaseFirestore _firestore;

  FirestoreHelper(this._firestore);

  CollectionReference get peopleCollection => _firestore.collection('people');
  DocumentReference getPeople(String peopleId) =>
      peopleCollection.doc(peopleId);

  CollectionReference get usersCollection => _firestore.collection('users');
  DocumentReference getUsers(String id) => peopleCollection.doc(id);

  CollectionReference get personCollection => _firestore.collection('Person');
  DocumentReference getPersons(String id) => peopleCollection.doc(id);

  CollectionReference get medicinesCollection => _firestore.collection('medicines');
  DocumentReference getMedicines(String id) => medicinesCollection.doc(id);

  CollectionReference get treatmentCollection => _firestore.collection('treatments');
  DocumentReference getTreatment(String id) => treatmentCollection.doc(id);
}
