import 'package:app_medi/features/background/DataBase/query/query_notification.dart';
import 'package:app_medi/features/background/services/parse_collections.dart';
import 'package:app_medi/shared/values/functions.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '../../diary_treatment/domain/models/recipe_detail_models.dart';
import '../DataBase/collectons/notification_collection.dart';

@lazySingleton
class ServiceIsar extends ParseCollections {
  final QueryNotification queryNotification = QueryNotification();

  Future<List<NotificationCollection?>> getNotifications(String user) {
    return queryNotification.getNotifications(user);
  }

  Future<List<NotificationCollection?>> getNotificationsAlarms(
      String user) async {
    List<NotificationCollection?> list = [];
    final results = await queryNotification.getNotifications(user);
    final now = FuntionsApp().parseTimeAlarm(DateTime.now(), DateTime.now());
    final list1 = results
        .where((p) => DateTime.parse(p!.hour).compareTo(now) == 0)
        .toList();
    if (list1.isNotEmpty) {
      list.addAll(list1);
    }
    return list;
  }

  Future<List<NotificationCollection?>> getNotificationsAlarmsTwo(
      String user) async {
    List<NotificationCollection?> list = [];
    final results = await queryNotification.getNotifications(user);
    final now = FuntionsApp().parseTimeAlarm(DateTime.now(), DateTime.now());
    final list1 =
        results.where((p) => now.isAfter(DateTime.parse(p!.hour))).toList();
    if (list1.isNotEmpty) {
      list.addAll(list1);
    }
    
    List<int> ids = [];
    for (var item in list) {
      if (item!.notifyCompleted == item.quantity) {
        ids.add(item.id);
        continue;
      }
      item.notifyCompleted = item.notifyCompleted + 1;
      await queryNotification.save(item);
    }

    for (final item in ids) {
      list.removeWhere((p) => p!.id == item);
    }
    return list;
  }

  Future<void> deteleNotification(String documentId) async {
    final result =
        await queryNotification.getNotificatuionByMedicine(documentId);
    for (final item in result) {
      await queryNotification.delete(item!.id);
    }
  }

  Future<void> isTomado(NotificationCollection item) async {
    item.tomado = true;
    await queryNotification.save(item);
  }

  Future<void> insertNotification(
      RecipeDetailModels detail, String user) async {
    try {
      for (final hour in getDates(detail.hour.split(";"))) {
        var res = await queryNotification.existByDocumentAndHour(
            detail.id!, detail.recipeModel!.id!, hour);
        if (res != null) {
          res.keyDocument = detail.id!;
          res.titleNotification = "Tomar ${detail.medicamentModel!.name}";
          res.description =
              "Tomar ${detail.medicamentModel!.name} para ${detail.recipeModel!.name}";
          res.hour = hour;
          res.fromDate = detail.fromDate.toString();
          res.toDate = detail.toDate.toString();
          res.quantity = res.quantity;
          res.keyDocumentRecipe = detail.recipeModel!.id!;
          res.user = user;
          res.tomado = res.tomado;
          res.notifyCompleted = res.notifyCompleted;
          await queryNotification.save(res);
        } else {
          var model = NotificationCollection();
          model.keyDocument = detail.id!;
          model.titleNotification = "Tomar ${detail.medicamentModel!.name}";
          model.description =
              "Tomar ${detail.medicamentModel!.name} para ${detail.recipeModel!.name}";
          model.hour = hour;
          model.quantity = 4;
          model.notifyCompleted = 0;
          model.tomado = false;
          model.fromDate = detail.fromDate.toString();
          model.toDate = detail.toDate.toString();
          model.keyDocumentRecipe = detail.recipeModel!.id!;
          model.user = user;
          await queryNotification.save(model);
        }
      }
      return;
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }

  List<String> getDates(List<String> hours) {
    List<String> dates = [];
    int index = 0;
    while (index < (hours.length - 1)) {
      dates.add(hours[index]);
      index++;
    }
    return dates;
  }
}
