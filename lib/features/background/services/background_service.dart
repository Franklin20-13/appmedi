import 'dart:convert';

import 'package:app_medi/core/notifications/local_notifications.dart';
import 'package:app_medi/features/authentication/domain/entities/person.dart';
import 'package:app_medi/features/background/services/service_isar.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BackgroundService {
  ServiceIsar serviceIsar = ServiceIsar();
  late SharedPreferences _preferences;
  Future<void> sendAlarms() async {
    final localNotification = LocalNotifications();
    _preferences = await SharedPreferences.getInstance();
    final user = await getUserSesion();
    if (user == null) {
      return;
    }
    final alarms =
        await serviceIsar.getNotificationsAlarms(user.user!.userName);
    for (final item in alarms) {
      await localNotification.sendLocalNotification(
        title: item!.titleNotification,
        body:item.description,
      );
    }
  }

  Future<void> sendAlarms2() async {
    final localNotification = LocalNotifications();
    _preferences = await SharedPreferences.getInstance();
    final user = await getUserSesion();
    if (user == null) {
      return;
    }
    final alarms =
        await serviceIsar.getNotificationsAlarmsTwo(user.user!.userName);
    for (final item in alarms) {
      await localNotification.sendLocalNotification(
        title: item!.titleNotification,
        body:item.description
      );
    }
  }

  Future<PersonEntity?> getUserSesion() async {
    try {
      final userEntity = _preferences.get("SESSION_APP");
      if (userEntity == null) {
        return null;
      }
      final userEnitity = parseUser(userEntity as String);
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
