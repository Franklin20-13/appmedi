import 'package:app_medi/config/custom_icons.dart';
import 'package:flutter/material.dart';

import '../../../diary_treatment/presentation/views/diary_treatment.dart';
import '../../../diary_treatment/presentation/views/notfication.dart';
import '../../../medicines/presentation/views/medicines_view.dart';
import '../../presentation/views/profile_user.dart';

class OptionHome {
  OptionHome({required this.icon, required this.title, required this.child});
  IconData icon;
  String title;
  Widget child;
}

List<OptionHome> listUser = [
  OptionHome(
    icon: Icons.home,
    title: 'Home',
    child: const ProfileHomeView(),
  ),
  OptionHome(
    icon: MediIcons.capsules,
    title: 'Medicamentos',
    child: const MedicinesView(),
  ),
  OptionHome(
    icon: MediIcons.first_aid,
    title: 'Agenda',
    child: const DiaryTreatmentView(),
  ),
  OptionHome(
    icon: Icons.notifications,
    title: 'Alertas',
    child: const NotificationView(),
  ),
];

final List<OptionHome> listDoctor = [
  OptionHome(icon: Icons.abc, title: 'doctor', child:  Container())
];
