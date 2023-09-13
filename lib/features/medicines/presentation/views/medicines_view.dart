import 'package:app_medi/features/medicines/domain/models/medicament_model.dart';
import 'package:app_medi/features/medicines/presentation/bloc/medicine/medicine_bloc.dart';
import 'package:app_medi/shared/values/values.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../config/custom_icons.dart';
import '../../../../shared/values/functions.dart';
import '../bloc/get_medicines/get_medicines_bloc.dart';

class MedicinesView extends StatefulWidget {
  const MedicinesView({super.key});

  @override
  State<MedicinesView> createState() => _MedicinesViewState();
}

class _MedicinesViewState extends State<MedicinesView> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  late TextEditingController _nameController;
  late MedicamentModel? model;
  String? typeMedicine;
  bool isList = true;
  late MedicineBloc medicineBloc;
  late GetMedicinesBloc getMedicinesBloc;
  bool isDelete = false;
  @override
  void initState() {
    _nameController = TextEditingController(text: '');
    medicineBloc = context.read<MedicineBloc>();
    getMedicinesBloc = context.read<GetMedicinesBloc>();
    getMedicinesBloc.add(const GetMedicinesEvent.getMedicines());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    ProgressDialog progressDialog = ProgressDialog(context);
    return MultiBlocListener(
      listeners: [
        BlocListener<MedicineBloc, MedicineState>(listener: (context, state) {
          if (state is InitialMedicine) {
            progressDialog.show();
          }
          if (state is LoadMessageMedicine) {
            progressDialog.dismiss();
            showInSnackBar(context, state.message, color: Colors.red);
          }
          if (state is LoadSuccessMedicine) {
            progressDialog.dismiss();
            showInSnackBar(context, state.message);
            clearForm();
          }
        })
      ],
      child: Container(
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
                    MediIcons.capsules,
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
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      width: double.infinity,
                      height: 10,
                    ),
                    Expanded(
                      child: isList
                          ? ListView(
                              children: [
                                Align(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Mis Medicamentos',
                                        style: GoogleFonts.montserrat(
                                          fontSize: 23,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Material(
                                        child: InkWell(
                                          onTap: () {
                                            clearForm();
                                            setState(() {
                                              isList = false;
                                            });
                                          },
                                          child: const Icon(
                                            Icons.add_circle,
                                            size: 35,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                BlocBuilder<GetMedicinesBloc,
                                        GetMedicinesState>(
                                    builder: (context, state) {
                                  return state.map(
                                      initial: (_) => SpinKitThreeBounce(
                                            size: 30,
                                            itemBuilder: (BuildContext context,
                                                int index) {
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
                                              e.medicines.length,
                                              (index) => itemsMedicamentWidget(
                                                size,
                                                e.medicines[index],
                                              ).paddingBottom(15),
                                            ),
                                          ).paddingTop(17),
                                      loadMessage: (_) => Container());
                                }),
                              ],
                            )
                          : newMedicamentWidget(),
                    ),
                  ],
                ).paddingOnly(left: 15, right: 15),
              ),
            )
          ],
        ),
      ),
    );
  }

  Form newMedicamentWidget() {
    return Form(
      key: _formKey,
      child: ListView(
        children: [
          Align(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Nuevo Medicamento',
                  style: GoogleFonts.montserrat(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Material(
                  child: InkWell(
                    onTap: () {
                      clearForm();
                      setState(() {
                        isList = true;
                      });
                    },
                    child: const Icon(
                      Icons.close,
                      size: 40,
                    ),
                  ),
                )
              ],
            ),
          ),
          textInput('Nombre Medicamento', _nameController, false,
                  code: '',
                  clave: 0,
                  inputType: TextInputType.text,
                  isRequired: true)
              .paddingTop(10),
          dropdownButtonFormSearch<String>(
              filterFn: (String text, String searchTerm) {
                return text.toLowerCase().contains(searchTerm.toLowerCase());
              },
              itemAsString: (String data) => data,
              items: typeMedicaments,
              label: 'Tipo Medicamento',
              onChanged: (String? selectedData) {
                if (selectedData != null) {
                  typeMedicine = selectedData;
                }
              },
              selectedItem: typeMedicine,
              isRequired: true),
          buttonWidgetApp(
                  label: 'Guardar',
                  onTap: saveMedicine,
                  height: 50,
                  fontSize: 20)
              .paddingOnly(
            top: 15,
            bottom: 15,
          ),
        ],
      ),
    );
  }

  Container itemsMedicamentWidget(Size size, MedicamentModel item) {
    return Container(
      width: double.infinity,
      height: 5 + 60,
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
                      child:
                          Text(FuntionsApp().primeraLetraMayuscula(item.name))
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
                      child:
                          Text(FuntionsApp().primeraLetraMayuscula(item.type))
                              .paddingLeft(10),
                    ),
                  ],
                ),
              ],
            ).paddingLeft(10),
          ),
          if (!isDelete)
            InkWell(
              onDoubleTap: () {
                setState(() {
                  isDelete = !isDelete;
                });
              },
              onTap: () {
                model = item;
                _nameController.text = item.name;
                typeMedicine = item.type;
                setState(() {
                  isList = false;
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
                  isDelete = !isDelete;
                });
              },
              onTap: () {
                alert(context,
                    text: "¿Esta seguro de eliminar este medicamento?",
                    cancel: () {
                  Navigator.pop(context);
                }, confirm: () {
                  medicineBloc.add(MedicineEvent.deleteItem(item.id!));
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

  clearForm() {
    model = null;
    _nameController = TextEditingController(text: '');
    typeMedicine = null;
    setState(() {});
  }

  saveMedicine() {
    setState(() {});
    if (typeMedicine == null) {
      return;
    }
    if (_formKey.currentState!.validate()) {
      model = MedicamentModel(
        name: _nameController.text,
        type: typeMedicine!,
        id: model == null ? '' : model!.id,
      );
      medicineBloc.add(MedicineEvent.saveMedicine(model!));
    }
  }
}
