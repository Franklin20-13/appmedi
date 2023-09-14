import 'package:isar/isar.dart';
part 'user_collection.g.dart';

@Collection()
class UserCollection {
  late Id id = Isar.autoIncrement;
  late String key;
  late String value;
}
