import 'package:app_medi/config/custom_icons.dart';
import 'package:app_medi/features/diary_treatment/presentation/widget/calendarWidget.dart';
import 'package:app_medi/shared/values/values.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../shared/values/functions.dart';

class DiaryTreatmentView extends StatefulWidget {
  const DiaryTreatmentView({super.key});

  @override
  State<DiaryTreatmentView> createState() => _DiaryTreatmentViewState();
}

class _DiaryTreatmentViewState extends State<DiaryTreatmentView> {
  int next = 0;
  late DateTime dateSelected;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: AppColors.primaryColor,
      child: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: size.height * .3,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  MediIcons.first_aid,
                  size: 70,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: size.width,
              height: size.height * .6,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: ListView(
                children: [
                  Align(
                    child: Text('Agendar Receta Médica',
                        style: GoogleFonts.montserrat(
                            fontSize: 21, fontWeight: FontWeight.bold)),
                  ),
                  if (next == 0)
                    Column(
                      children: [
                        CalendarWidget(
                          onchange: (date) {
                            dateSelected = date;
                          },
                        ),
                        buttonWidgetApp(
                          label: 'Continuar',
                          onTap: () {
                            if (FuntionsApp()
                                .minorDate(dateSelected, DateTime.now())) {
                              int dt = dateSelected.compareTo(DateTime.now());
                              if (dt == 0) {
                                setState(() {
                                  next = 1;
                                });
                                return;
                              }
                              showInSnackBar(
                                  context, "No se permite fechas transcurridas",
                                  color: Colors.red);
                              return;
                            }
                            setState(() {
                              next = 1;
                            });
                          },
                          width: 200,
                          height: 55,
                        ).paddingOnly(top: 25, bottom: 15),
                      ],
                    ).paddingOnly(left: 45, right: 45, top: 20)
                  else
                    const Column(
                      children: [],
                    ),
                ],
              ).paddingOnly(left: 15, right: 15),
            ),
          ),
        ],
      ),
    );
  }
}
