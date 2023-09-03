import 'package:app_medi/config/custom_icons.dart';
import 'package:app_medi/features/medicines/domain/models/medicament_model.dart';
import 'package:app_medi/shared/values/functions.dart';
import 'package:app_medi/shared/values/values.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:datetime_picker_formfield_new/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../../../medicines/presentation/bloc/get_medicines/get_medicines_bloc.dart';

class DiaryTreatmentView extends StatefulWidget {
  const DiaryTreatmentView({super.key});

  @override
  State<DiaryTreatmentView> createState() => _DiaryTreatmentViewState();
}

class _DiaryTreatmentViewState extends State<DiaryTreatmentView> {
  late TextEditingController _quantityController;
  late TextEditingController _measureController;
  late TextEditingController _timeController;
  final formatTime = DateFormat("HH:mm");
  List<DateTime> dates = [];
  List<DateTime> hours = [];
  int next = 0;
  DateTime? fecha;
  late DateTime dateSelected;
  @override
  void initState() {
    _quantityController = TextEditingController(text: '');
    _measureController = TextEditingController(text: '');
    _timeController = TextEditingController(text: '');
    super.initState();
  }

  MedicamentModel? selectedMedicament;
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
                  Card(
                    child: ExpansionTile(
                      initiallyExpanded: true,
                      title: const Text(
                        'Dosis',
                        style: TextStyle(
                          color: AppColors.primaryColor,
                        ),
                      ),
                      children: [
                        BlocBuilder<GetMedicinesBloc, GetMedicinesState>(
                            builder: (context, state) {
                          return state.map(
                            initial: (_) => SpinKitThreeBounce(
                              size: 30,
                              itemBuilder: (BuildContext context, int index) {
                                return DecoratedBox(
                                  decoration: BoxDecoration(
                                    color: index.isEven
                                        ? AppColors.primaryColor
                                        : AppColors.mainColor,
                                  ),
                                );
                              },
                            ),
                            loadSuccess: (e) {
                              return dropdownButtonFormSearch<MedicamentModel>(
                                filterFn: (MedicamentModel person,
                                    String searchTerm) {
                                  return person.name
                                      .toLowerCase()
                                      .contains(searchTerm.toLowerCase());
                                },
                                itemAsString: (MedicamentModel data) =>
                                    data.name,
                                items: e.medicines,
                                label: 'Medicamentos',
                                onChanged: (MedicamentModel? selectedData) {
                                  if (selectedData != null) {
                                    selectedMedicament = selectedData;
                                  }
                                },
                                selectedItem: selectedMedicament,
                              );
                            },
                            loadMessage: (_) => Container(),
                          );
                        }),
                        textInput('Cantidad', _quantityController, false,
                            code: '',
                            clave: 0,
                            inputType: TextInputType.number),
                        textInput('Medida', _measureController, false,
                                code: '',
                                clave: 0,
                                inputType: TextInputType.text)
                            .paddingBottom(5)
                      ],
                    ),
                  ).paddingTop(20),
                  Card(
                    child: ExpansionTile(
                      initiallyExpanded: true,
                      title: const Text(
                        'Periodo',
                        style: TextStyle(
                          color: AppColors.primaryColor,
                        ),
                      ),
                      children: [
                        CalendarDatePicker2(
                          config: CalendarDatePicker2Config(
                              calendarType: CalendarDatePicker2Type.range,
                              selectedDayHighlightColor:
                                  AppColors.primaryColor),
                          value: dates,
                          onValueChanged: (dates) => dates = dates,
                        )
                      ],
                    ),
                  ),
                  Card(
                    child: ExpansionTile(
                      initiallyExpanded: true,
                      title: const Text(
                        'Horarios',
                        style: TextStyle(
                          color: AppColors.primaryColor,
                        ),
                      ),
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: List.generate(
                              hours.length,
                              (index) {
                                return itemHourWidget(hours[index], index)
                                    .paddingRight(10);
                              },
                            ),
                          ).paddingBottom(10),
                        ),
                        DateTimeField(
                          format: formatTime,
                          controller: _timeController,
                          validator: (value) => validaHora(value!, fecha),
                          cursorColor: AppColors.primaryColor,
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                              vertical: 3,
                              horizontal: 10,
                            ),
                            labelText: 'Selecione',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            fillColor: AppColors.primaryColor,
                          ),
                          onChanged: (data) {
                            setState(() {});
                            if (data == null) {
                              return;
                            }
                            final res = FuntionsApp().parseTime(data);
                            final exist = hours
                                .where((p) => p.compareTo(res) == 0)
                                .toList();
                            if (exist.isNotEmpty) {
                              showInSnackBar(
                                context,
                                'Esta hora ya esta en tu horario',
                                color: Colors.red,
                              );
                              return;
                            }
                            hours.add(res);
                          },
                          onShowPicker: (context, currentValue) async {
                            final time = await showTimePicker(
                              context: context,
                              initialTime: TimeOfDay.fromDateTime(
                                  currentValue ?? DateTime.now()),
                            );
                            return DateTimeField.convert(time);
                          },
                        ),
                      ],
                    ),
                  ),
                  buttonWidgetApp(
                          label: 'Agendar',
                          onTap: () {},
                          fontSize: 20,
                          height: 50)
                      .paddingOnly(top: 10, bottom: 15),
                ],
              ).paddingOnly(left: 15, right: 15),
            ),
          ),
        ],
      ),
    );
  }

  InkWell itemHourWidget(DateTime date, int index) {
    return InkWell(
      onDoubleTap: () {
        hours.removeAt(index);
        setState(() {});
      },
      child: Chip(
        label: Row(
          children: [
            Text(
              DateFormat('HH:mm a').format(FuntionsApp().parseTime(date)),
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
            const Icon(
              Icons.close,
              color: Colors.white,
            )
          ],
        ),
        backgroundColor: AppColors.primaryColor,
      ),
    );
  }
}
