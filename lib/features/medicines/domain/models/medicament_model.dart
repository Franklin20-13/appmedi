import 'package:app_medi/core/data/fields/medicines_fields.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class MedicamentModel {
  MedicamentModel(
      {this.id,
      required this.name,
      required this.type,
      this.userRef,
      this.createDate});
  String? id;
  String name;
  String type;
  DocumentReference? userRef;
  DateTime? createDate;
  factory MedicamentModel.fromJson(Map<String, dynamic> json,
      {String? id, DocumentReference? refUser}) {
    return MedicamentModel(
      id: json.containsKey(MedicinesFields.id)
          ? json[MedicinesFields.id]
          : id ?? '',
      name: json.containsKey(MedicinesFields.name)
          ? json[MedicinesFields.name]
          : '',
      type: json.containsKey(MedicinesFields.typeMedicine)
          ? json[MedicinesFields.typeMedicine]
          : '',
      createDate: json.containsKey(MedicinesFields.createDate)
          ? json[MedicinesFields.createDate] == null
              ? DateTime.now()
              : DateTime.fromMillisecondsSinceEpoch(
                  (json[MedicinesFields.createDate] as Timestamp)
                      .millisecondsSinceEpoch,
                )
          : DateTime.now(),
      userRef: json.containsKey(MedicinesFields.userRef)
          ? json[MedicinesFields.userRef]
          : null,
    );
  }
}

Map<String, dynamic> mapMedicines(MedicamentModel instance) =>
    <String, dynamic>{
      MedicinesFields.name: instance.name,
      MedicinesFields.typeMedicine: instance.type,
      MedicinesFields.userRef: instance.userRef,
      MedicinesFields.createDate: FieldValue.serverTimestamp(),
    };

final List<String> typeMedicaments = [
  "Tabletas",
  "Capsulas",
  "Inyecciones",
  "Gotas"
];

final List<MedicamentModel> listMedicaments = [
  MedicamentModel(
    name: 'Panadol',
    type: 'Patilla',
  ),
  MedicamentModel(
    name: 'Paracetamol',
    type: 'Patilla',
  ),
  MedicamentModel(
    name: 'Panadol',
    type: 'Patilla',
  ),
  MedicamentModel(
    name: 'Panadol',
    type: 'Patilla',
  ),
  MedicamentModel(
    name: 'Panadol',
    type: 'Patilla',
  ),
];
