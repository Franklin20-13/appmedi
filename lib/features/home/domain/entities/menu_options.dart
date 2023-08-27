import 'package:app_medi/config/custom_icons.dart';
import 'package:flutter/material.dart';

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
    child: Container(),
  ),
  OptionHome(
    icon: MediIcons.file_medical,
    title: 'Tratamientos',
    child: Container(),
  ),
];

final List<OptionHome> listDoctor = [];
