import 'package:app_medi/features/background/DataBase/collectons/notification_collection.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';

import '../helpers/isar_database_helper.dart';

@injectable
class QueryNotification extends IsarDataBaseHelper {
  
  Future<void> save(NotificationCollection notificationCollection) async {
    final isar = await db;
    isar.writeTxnSync<int>(
        () => isar.notificationCollections.putSync(notificationCollection));
  }

  Future<List<NotificationCollection?>> existByDocument(
      String documentId, String documentRecipeId) async {
    final isar = await db;
    final query = await isar.notificationCollections
        .filter()
        .keyDocumentEqualTo(documentId)
        .keyDocumentRecipeEqualTo(documentRecipeId)
        .findAll();
    return query;
  }

  Future<NotificationCollection?> existByDocumentAndHour(
      String documentId, String documentRecipeId, String hour) async {
    final isar = await db;
    final query = await isar.notificationCollections
        .filter()
        .keyDocumentEqualTo(documentId)
        .keyDocumentRecipeEqualTo(documentRecipeId)
        .hourEqualTo(hour)
        .findFirst();
    return query;
  }

  Future<List<NotificationCollection?>> getNotifications(
    String documentRecipeId,
  ) async {
    final isar = await db;
    final query = await isar.notificationCollections
        .filter()
        .userEqualTo(documentRecipeId)
        .findAll();
    return query;
  }

  Future<List<NotificationCollection?>> getNotificatuionByMedicine(
    String documentMedicineId,
  ) async {
    final isar = await db;
    final query = await isar.notificationCollections
        .filter()
        .keyDocumentEqualTo(documentMedicineId)
        .findAll();
    return query;
  }

  Future<bool> delete(int id) async {
    final isar = await db;
    final status = await isar.writeTxn<bool>(() async {
      return await isar.notificationCollections.delete(id);
    });
    return status;
  }
}
