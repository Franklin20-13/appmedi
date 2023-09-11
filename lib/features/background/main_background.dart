import 'dart:async';
import 'dart:ui';
import 'package:app_medi/features/background/services/background_service.dart';
import 'package:flutter_background_service/flutter_background_service.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_background_service_android/flutter_background_service_android.dart';

Future<void> configureBackgroundMode() async {
  final service = FlutterBackgroundService();
  await service.configure(
    androidConfiguration: AndroidConfiguration(
        notificationChannelId: "my_foreground_medi",
        isForegroundMode: true,
        onStart: onStart,
        initialNotificationContent: 'Aplicación en segundo plano',
        foregroundServiceNotificationId: 888,
        initialNotificationTitle: 'MEDI'),
    iosConfiguration: IosConfiguration(),
  );
  await service.startService();
}

@pragma('vm:entry-point')
void onStart(ServiceInstance service) async {
  DartPluginRegistrant.ensureInitialized();
  BackgroundService backgroundService = BackgroundService();
  Timer.periodic(const Duration(seconds: 30), (timer) async {
    if (service is AndroidServiceInstance) {
      if (await service.isForegroundService()) {
        await backgroundService.sendAlarms();
        await backgroundService.sendAlarms2();
      }
    }
  });
}
