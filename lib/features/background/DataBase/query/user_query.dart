import 'package:app_medi/features/background/DataBase/collectons/user_collection.dart';
import 'package:app_medi/features/background/DataBase/helpers/isar_database_helper.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';

@injectable
class UserQuery extends IsarDataBaseHelper {
  Future<void> save(UserCollection userCollection) async {
    final isar = await db;
    isar.writeTxnSync<int>(() => isar.userCollections.putSync(userCollection));
  }

  Future<UserCollection?> getUser(String key) async {
    final isar = await db;
    final query = await isar.userCollections
        .filter()
        .keyEqualTo(key)
        .findFirst();
    return query;
  }
}
