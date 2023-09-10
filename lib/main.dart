import 'package:app_medi/core/helpers/provider_helper.dart';
import 'package:app_medi/core/notifications/local_notifications.dart';
import 'package:app_medi/features/background/main_background.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'core/ioc/injectable.dart';
import 'features/app.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  final localNotification = LocalNotifications();
  await localNotification.initNotifications();
  await configureDependencies();
  await configureBackgroundMode();
  runApp(
    MultiBlocProvider(
      providers: BlocProviderHelper().providers,
      child: const AppMedi(),
    ),
  );
}
