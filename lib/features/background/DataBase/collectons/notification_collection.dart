import 'package:isar/isar.dart';
part 'notification_collection.g.dart';

@Collection()
class NotificationCollection {
  late Id id = Isar.autoIncrement;
  late String keyDocument;
  late String titleNotification;
  late String description;
  late String fromDate;
  late String toDate;
  late String hour;
  late bool tomado;
  late String keyDocumentRecipe;
  late String user;
  late int quantity;
  late int notifyCompleted;
}
