import 'package:app_medi/core/helpers/provider_helper.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/ioc/injectable.dart';
import 'features/app.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await configureDependencies();
  runApp(
    MultiBlocProvider(
      providers: BlocProviderHelper().providers,
      child: const AppMedi(),
    ),
  );
}
