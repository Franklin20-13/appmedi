import 'dart:io';

import 'package:flutter_local_notifications/flutter_local_notifications.dart';
class LocalNotifications {
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  final AndroidNotificationChannel channel = const AndroidNotificationChannel(
    'my_foreground_medi', // id
    'High Importance Notifications', // title
    description:
        'This channel is used for important notifications.', // description
    importance: Importance.high,
  );

  initNotifications() async {
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/launcher_icon');
    final DarwinInitializationSettings initializationSettingsDarwin =
        DarwinInitializationSettings(
            onDidReceiveLocalNotification: onDidReceiveLocalNotification);
    LinuxInitializationSettings initializationSettingsLinux =
        const LinuxInitializationSettings(
            defaultActionName: 'Open notification');
    final InitializationSettings initializationSettings =
        InitializationSettings(
            android: initializationSettingsAndroid,
            iOS: initializationSettingsDarwin,
            linux: initializationSettingsLinux);
    flutterLocalNotificationsPlugin.initialize(initializationSettings,
        onDidReceiveNotificationResponse: onSelectNotification);
    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(channel);
    await _requestPermissions();
  }

  @pragma('vm:entry-point')
  Future<void> notificationTapBackground(NotificationResponse? notificationResponse)async {
    // ignore: avoid_print
    print('notification(${notificationResponse!.id}) action tapped: '
        '${notificationResponse.actionId} with'
        ' payload: ${notificationResponse.payload}');
    if (notificationResponse.input?.isNotEmpty ?? false) {
      // ignore: avoid_print
      print(
          'notification action tapped with input: ${notificationResponse.input}');
    }
  }

  Future onDidReceiveLocalNotification(
      int id, String? title, String? body, String? payload) async {
    // display a dialog with the notification details, tap ok to go to another page
  }

  Future onSelectNotification(NotificationResponse? payload) async {
    print(payload!.id);
  }

  Future<void> _requestPermissions() async {
    if (Platform.isAndroid) {
      final AndroidFlutterLocalNotificationsPlugin? androidImplementation =
          flutterLocalNotificationsPlugin.resolvePlatformSpecificImplementation<
              AndroidFlutterLocalNotificationsPlugin>();

      await androidImplementation?.requestPermission();
    }
  }

  Future<void> sendLocalNotification(
      {int idNotification = 0,
      required String title,
      required String body,
      String payload = ''}) async {
    AndroidNotificationDetails androidNotificationDetails =
        AndroidNotificationDetails(channel.id, channel.name,
            enableVibration: false,
            channelDescription: channel.description,
            importance: Importance.high,
            priority: Priority.high,
            ticker: 'Nuevo mensaje',
            fullScreenIntent: true,
            actions: [
          const AndroidNotificationAction(
            'custom_button',
            'Tomado',
          ),
        ]);
    NotificationDetails notificationDetails =
        NotificationDetails(android: androidNotificationDetails);
    await flutterLocalNotificationsPlugin.show(
      idNotification,
      title,
      body,
      notificationDetails,
      payload: payload,
    );
  }
}
