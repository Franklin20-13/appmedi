import 'package:app_medi/features/diary_treatment/domain/models/recipe_model.dart';
import 'package:app_medi/features/diary_treatment/presentation/bloc/medicament_detail/medicament_detail_bloc.dart';
import 'package:app_medi/shared/values/functions.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:datetime_picker_formfield_new/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../../../../config/custom_icons.dart';
import '../../../../shared/values/values.dart';
import '../../../medicines/domain/models/medicament_model.dart';
import '../../../medicines/presentation/bloc/get_medicines/get_medicines_bloc.dart';
import '../../domain/models/recipe_detail_models.dart';
import '../bloc/treatament/treatament_bloc.dart';

class RecipeDetailWidget extends StatefulWidget {
  const RecipeDetailWidget(
      {super.key, required this.recipe, required this.onTap});
  final RecipeModel recipe;
  final VoidCallback onTap;
  @override
  State<RecipeDetailWidget> createState() => _RecipeDetailWidgetState();
}

class _RecipeDetailWidgetState extends State<RecipeDetailWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  late TextEditingController _quantityController;
  late TextEditingController _measureController;
  late TextEditingController _timeController;
  final formatTime = DateFormat("HH:mm");
  List<DateTime?> dates = [];
  List<DateTime> hours = [];
  int next = 0;
  DateTime? fecha;
  late DateTime dateSelected;
  late TreatamentBloc treatamentBloc;
  RecipeDetailModels? model;
  late GetMedicinesBloc getMedicinesBloc;
  late MedicamentDetailBloc medicamentDetailBloc;
  bool isList = true;
  String title = "Mis Médicamentos";
  bool isDeleteMedicament = false;
  @override
  void initState() {
    treatamentBloc = context.read<TreatamentBloc>();
    _quantityController = TextEditingController(text: '');
    _measureController = TextEditingController(text: '');
    _timeController = TextEditingController(text: '');
    getMedicinesBloc = context.read<GetMedicinesBloc>();
    getMedicinesBloc.add(const GetMedicinesEvent.getMedicines());
    medicamentDetailBloc = context.read<MedicamentDetailBloc>();
    medicamentDetailBloc
        .add(MedicamentDetailEvent.getMedimanetItems(widget.recipe.id!));
    super.initState();
  }

  MedicamentModel? selectedMedicament;
  clearForm() {
    _quantityController = TextEditingController(text: '');
    _measureController = TextEditingController(text: '');
    _timeController = TextEditingController(text: '');
    selectedMedicament = null;
    dates = [];
    hours = [];
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return MultiBlocListener(
      listeners: [
        BlocListener<TreatamentBloc, TreatamentState>(
            listener: (context, state) {
          if (state is LoadSuccessTreatment) {
            clearForm();
            medicamentDetailBloc.add(
                MedicamentDetailEvent.getMedimanetItems(widget.recipe.id!));
          }
        })
      ],
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 40,
              child: Align(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Material(
                      child: InkWell(
                        onTap: widget.onTap,
                        child: const Icon(
                          Icons.arrow_back_ios,
                          size: 26,
                        ),
                      ),
                    ).paddingLeft(12),
                    Text(
                      title,
                      style: GoogleFonts.montserrat(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                    ).paddingRight(10),
                  ],
                ).paddingTop(10),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 40,
                    child: ListTile(
                      leading: const Icon(
                        Icons.note,
                        size: 36,
                        color: AppColors.primaryColor,
                      ),
                      trailing: InkWell(
                        onTap: () {
                          setState(() {
                            title = !isList
                                ? "Mis Médicamentos"
                                : "Nuevo Medicamento";
                            isList = !isList;
                          });
                        },
                        child: Icon(
                          isList ? Icons.add_circle : Icons.close,
                          size: 36,
                          color: AppColors.primaryColor,
                        ),
                      ),
                      title: Text(
                        FuntionsApp().primeraLetraMayuscula(widget.recipe.name),
                        style: GoogleFonts.montserrat(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        FuntionsApp()
                            .primeraLetraMayuscula(widget.recipe.description),
                        style: GoogleFonts.montserrat(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: AppColors.primaryColor.withOpacity(0.7)),
                      ),
                    ),
                  ).paddingBottom(10),
                  isList
                      ? BlocBuilder<MedicamentDetailBloc,
                          MedicamentDetailState>(builder: (context, state) {
                          return state.map(
                              initial: (_) => SpinKitThreeBounce(
                                    size: 30,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return DecoratedBox(
                                        decoration: BoxDecoration(
                                          color: index.isEven
                                              ? AppColors.primaryColor
                                              : AppColors.mainColor,
                                        ),
                                      );
                                    },
                                  ).paddingTop(size.height * .2 + 55),
                              loadSuccess: (e) => Column(
                                    children: List.generate(
                                      e.items.length,
                                      (index) => itemsMedicamentWidget(
                                        size,
                                        e.items[index],
                                      ).paddingBottom(10),
                                    ),
                                  ).paddingTop(27),
                              loadMessage: (_) => Container());
                        })
                      : newMedicamentWidget(context)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column newMedicamentWidget(BuildContext context) {
    return Column(
      children: [
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
                        filterFn: (MedicamentModel person, String searchTerm) {
                          return person.name
                              .toLowerCase()
                              .contains(searchTerm.toLowerCase());
                        },
                        itemAsString: (MedicamentModel data) => data.name,
                        items: e.medicines,
                        label: 'Medicamentos',
                        onChanged: (MedicamentModel? selectedData) {
                          if (selectedData != null) {
                            selectedMedicament = selectedData;
                          }
                        },
                        selectedItem: selectedMedicament,
                        isRequired: true);
                  },
                  loadMessage: (_) => Container(),
                );
              }),
              textInput('Cantidad', _quantityController, false,
                  code: '', clave: 0, inputType: TextInputType.number),
              textInput('Medida', _measureController, false,
                      code: '', clave: 0, inputType: TextInputType.text)
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
                    selectedDayHighlightColor: AppColors.primaryColor),
                value: dates,
                onValueChanged: (items) {
                  dates.clear();
                  for (final item in items) {
                    dates.add(item);
                  }
                },
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
                validator: (value) {
                  return null;
                },
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
                  final exist =
                      hours.where((p) => p.compareTo(res) == 0).toList();
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
                    initialTime:
                        TimeOfDay.fromDateTime(currentValue ?? DateTime.now()),
                  );
                  return DateTimeField.convert(time);
                },
              ),
            ],
          ),
        ),
        buttonWidgetApp(
                label: 'Agendar', onTap: saveFrom, fontSize: 20, height: 50)
            .paddingOnly(top: 10, bottom: 15),
      ],
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

  Container itemsMedicamentWidget(Size size, RecipeDetailModels item) {
    return Container(
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 1.0,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: size.width * .2,
            height: double.infinity,
            decoration: const BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
            ),
            child: const Icon(
              MediIcons.capsules,
              size: 35,
              color: Colors.white,
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Text(
                      'Nombre:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Expanded(
                      child: Text(FuntionsApp().primeraLetraMayuscula(
                              item.medicamentModel!.name))
                          .paddingLeft(10),
                    ),
                  ],
                ).paddingBottom(5),
                Row(
                  children: [
                    const Text(
                      'Tipo:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Expanded(
                      child: Text(FuntionsApp().primeraLetraMayuscula(
                              item.medicamentModel!.type))
                          .paddingLeft(10),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Text(
                      'Cantidad:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Expanded(
                      child: Text(item.quantity.toString()).paddingLeft(10),
                    ),
                  ],
                ).paddingTop(5),
              ],
            ).paddingLeft(10),
          ),
          if (!isDeleteMedicament)
            InkWell(
              onDoubleTap: () {
                setState(() {
                  isDeleteMedicament = true;
                });
              },
              onTap: () {},
              child: Container(
                width: 70,
                height: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: const Icon(
                  Icons.edit,
                  size: 35,
                  color: Colors.white,
                ),
              ),
            )
          else
            InkWell(
              onDoubleTap: () {
                setState(() {
                  isDeleteMedicament = false;
                });
              },
              onTap: () {
                alert(context,
                    text: "¿Esta seguro de eliminar este medicamento?",
                    cancel: () {
                  Navigator.pop(context);
                }, confirm: () {
                  //medicineBloc.add(MedicineEvent.deleteItem(item.id!));
                  Navigator.pop(context);
                });
              },
              child: Container(
                width: 70,
                height: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: const Icon(
                  Icons.delete,
                  size: 35,
                  color: Colors.white,
                ),
              ),
            )
        ],
      ),
    );
  }

  saveFrom() {
    if (_formKey.currentState!.validate()) {
      model = RecipeDetailModels(
        medicRef: null,
        medicamentId: selectedMedicament!.id!,
        quantity: int.parse(_quantityController.text),
        measure: _measureController.text,
        fromDate: dates[0]!,
        toDate: dates[1]!,
        userRef: null,
        recipeId: widget.recipe.id,
        hour: getHourString(),
      );
      treatamentBloc.add(TreatamentEvent.saveRecipeDetail(model!));
    }
  }

  getHourString() {
    String hour = "";
    for (final item in hours) {
      hour = "$hour${FuntionsApp().parseTime(item)};";
    }
    return hour;
  }
}
