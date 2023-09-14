import 'dart:convert';

import 'package:app_medi/features/authentication/domain/entities/person.dart';
import 'package:app_medi/features/background/DataBase/query/user_query.dart';

class ParseCollections {
    final UserQuery userQuery = UserQuery();
    Future<PersonEntity?> getUserSesion() async {
    try {
      final userEntity = await userQuery.getUser('SESSION_APP');
      if (userEntity == null) {
        return null;
      }
      final userEnitity = parseUser(userEntity.value);
      return userEnitity;
    } catch (e) {
      return null;
    }
  }

  PersonEntity parseUser(String responseBody) {
    final map = jsonDecode(responseBody) as Map<String, dynamic>;
    PersonEntity result = PersonEntity.fromJson(map);
    return result;
  }
}