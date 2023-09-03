import 'package:app_medi/core/data/fields/treatment_fields.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class TreatamentModels {
  TreatamentModels(
      {this.id,
      required this.medicRef,
      required this.quantity,
      this.medicamentId,
      required this.measure,
      required this.fromDate,
      required this.toDate,
      required this.userRef,
      required this.hour});
  String? id;
  DocumentReference? medicRef;
  String? medicamentId;
  int quantity;
  String measure;
  DateTime fromDate;
  DateTime toDate;
  String hour;
  DocumentReference? userRef;
  factory TreatamentModels.fromJson(Map<String, dynamic> json,
      {String? id, DocumentReference? refUser}) {
    return TreatamentModels(
      id: json.containsKey(TreatmentFields.id)
          ? json[TreatmentFields.id]
          : id ?? '',
      medicRef: json.containsKey(TreatmentFields.refMedicament)
          ? json[TreatmentFields.refMedicament]
          : null,
      quantity: json.containsKey(TreatmentFields.quantity)
          ? json[TreatmentFields.quantity]
          : 0,
      measure: json.containsKey(TreatmentFields.measure)
          ? json[TreatmentFields.measure]
          : '',
      fromDate: json.containsKey(TreatmentFields.fromDate)
          ? DateTime.parse(json[TreatmentFields.fromDate])
          : DateTime.now(),
      toDate: json.containsKey(TreatmentFields.toDate)
          ? DateTime.parse(json[TreatmentFields.toDate])
          : DateTime.now(),
      hour: json.containsKey(TreatmentFields.hour)
          ? json[TreatmentFields.hour]
          : "",
      userRef: json.containsKey(TreatmentFields.userRef)
          ? json[TreatmentFields.userRef]
          : null,
    );
  }
}

Map<String, dynamic> mapTreatament(TreatamentModels instance) =>
    <String, dynamic>{
      TreatmentFields.refMedicament: instance.medicRef,
      TreatmentFields.quantity: instance.quantity,
      TreatmentFields.measure: instance.measure,
      TreatmentFields.fromDate: instance.fromDate,
      TreatmentFields.toDate: instance.toDate,
      TreatmentFields.hour: instance.hour,
      TreatmentFields.userRef: instance.userRef,
    };
