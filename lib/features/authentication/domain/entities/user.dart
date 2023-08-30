import 'package:app_medi/core/data/fields/user_fields.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserEntity {
  UserEntity(
      {this.id,
      required this.userName,
      required this.pass,
      required this.role});
  final String? id;
  final String userName;
  final String pass;
  final int role;

  factory UserEntity.fromSnapshot(DocumentSnapshot snapshot) {
    return UserEntity(
      id: snapshot.id,
      userName: snapshot.get(UserFields.userName),
      pass: snapshot.get(UserFields.pass),
      role: snapshot.get(UserFields.role),
    );
  }
  factory UserEntity.fromJson(Map<String, dynamic> json, {String? id}) {
    return UserEntity(
        id: json.containsKey(UserFields.id) ? json[UserFields.id] : id ?? '',
        userName: json.containsKey(UserFields.userName)
            ? json[UserFields.userName]
            : '',
        pass: json.containsKey(UserFields.pass) ? json[UserFields.pass] : '',
        role: json.containsKey(UserFields.role) ? json[UserFields.role] : 0);
  }
}

Map<String, dynamic> mapUser(UserEntity instance) => <String, dynamic>{
      UserFields.userName: instance.userName,
      UserFields.pass: instance.pass,
      UserFields.role: instance.role,
      UserFields.id: instance.id,
    };
Map<String, dynamic> mapUser2(UserEntity instance) => <String, dynamic>{
      UserFields.userName: instance.userName,
      UserFields.pass: instance.pass,
      UserFields.role: instance.role,
    };
