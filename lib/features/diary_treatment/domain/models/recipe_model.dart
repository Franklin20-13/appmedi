import 'package:app_medi/core/data/fields/recipe_fields.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class RecipeModel {
  RecipeModel(
      {this.id,
      required this.name,
      required this.description,
      required this.date,
      this.doctorRef,
      this.userRef});
  String? id;
  String name;
  String description;
  DateTime date;
  DocumentReference? userRef;
  DocumentReference? doctorRef;
  factory RecipeModel.fromJson(Map<String, dynamic> json,
      {String? id, DocumentReference? refUser}) {
    return RecipeModel(
      id: json.containsKey(RecipeFields.id) ? json[RecipeFields.id] : id ?? '',
      name:
          json.containsKey(RecipeFields.name) ? json[RecipeFields.name] : null,
      description: json.containsKey(RecipeFields.description)
          ? json[RecipeFields.description]
          : '',
      doctorRef: json.containsKey(RecipeFields.refDoctor)
          ? json[RecipeFields.refDoctor]
          : null,
      date: json.containsKey(RecipeFields.date)
          ? json[RecipeFields.date]==null?DateTime.now():DateTime.fromMillisecondsSinceEpoch(
              (json[RecipeFields.date] as Timestamp)
                  .millisecondsSinceEpoch,
            )
          : DateTime.now(),
      userRef: json.containsKey(RecipeFields.refUser)
          ? json[RecipeFields.refUser]
          : null,
    );
  }
}

Map<String, dynamic> mapRecipe(RecipeModel instance) => <String, dynamic>{
      RecipeFields.name: instance.name,
      RecipeFields.description: instance.description,
      RecipeFields.date: instance.date,
      //RecipeFields.refDoctor: instance.doctorRef,
      RecipeFields.refUser: instance.userRef,
    };
