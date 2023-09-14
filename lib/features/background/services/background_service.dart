import 'package:app_medi/core/notifications/local_notifications.dart';
import 'package:app_medi/features/background/services/service_isar.dart';

class BackgroundService {
  ServiceIsar serviceIsar = ServiceIsar();
  Future<void> sendAlarms() async {
    final localNotification = LocalNotifications();
    final alarms =
        await serviceIsar.getNotificationsAlarms();
    for (final item in alarms) {
      await localNotification.sendLocalNotification(
        title: item!.titleNotification,
        body:item.description,
      );
    }
  }

  Future<void> sendAlarms2() async {
    final localNotification = LocalNotifications();
    final alarms =
        await serviceIsar.getNotificationsAlarmsTwo();
    for (final item in alarms) {
      await localNotification.sendLocalNotification(
        title: item!.titleNotification,
        body:item.description
      );
    }
  }


}
