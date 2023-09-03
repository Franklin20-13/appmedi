import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import '../routes/router.dart';

class AppMedi extends StatefulWidget {
  const AppMedi({super.key});

  @override
  State<AppMedi> createState() => _AppMediState();
}

class _AppMediState extends State<AppMedi> {
  final router = AppRouter();
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3)).then((value) {
      FlutterNativeSplash.remove();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router.config(),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [Locale('es')],
    );
  }
}
