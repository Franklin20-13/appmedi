import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import '../routes/router.dart';

class AppMedi extends StatefulWidget {
  const AppMedi({super.key});

  @override
  State<AppMedi> createState() => _AppMediState();
}

class _AppMediState extends State<AppMedi> {
  final router = AppRouter();
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
