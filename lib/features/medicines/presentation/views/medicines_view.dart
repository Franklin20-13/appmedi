import 'package:app_medi/shared/values/values.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../config/custom_icons.dart';

class MedicinesView extends StatefulWidget {
  const MedicinesView({super.key});

  @override
  State<MedicinesView> createState() => _MedicinesViewState();
}

class _MedicinesViewState extends State<MedicinesView> {
  late TextEditingController _nameController;
  late TextEditingController _dosisController;
  late TextEditingController _quantityController;
  bool isList = true;
  @override
  void initState() {
    _nameController = TextEditingController(text: '');
    _dosisController = TextEditingController(text: '');
    _quantityController = TextEditingController(text: '');
    super.initState();
  }

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
                              Column(
                                children: [
                                  itemsMedicmantWidget(size).paddingBottom(10),
                                  itemsMedicmantWidget(size).paddingBottom(10),
                                  itemsMedicmantWidget(size).paddingBottom(10),
                                  itemsMedicmantWidget(size).paddingBottom(10),
                                  itemsMedicmantWidget(size).paddingBottom(10)
                                ],
                              ).paddingTop(17)
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
    );
  }

  ListView newMedicamentWidget() {
    return ListView(
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
        inputWidgetCard(
          label: 'Nombre',
          icon: MediIcons.capsules,
          controller: _nameController,
          hintText: 'Ingrese Nombre',
        ).paddingTop(7),
        inputWidgetCard(
          label: 'Dosis',
          icon: Icons.keyboard,
          controller: _dosisController,
          hintText: 'Ingrese Dosis',
        ).paddingTop(7),
        inputWidgetCard(
          label: 'Cantidad',
          icon: Icons.keyboard,
          controller: _quantityController,
          hintText: 'Ingrese Cantidad',
        ).paddingTop(7),
        buttonWidgetApp(
          label: 'Registar',
          onTap: () {},
        ).paddingOnly(
          top: 15,
          bottom: 15,
        ),
      ],
    );
  }

  Container itemsMedicmantWidget(Size size) {
    return Container(
      width: double.infinity,
      height: 70,
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
                      child: const Text('Panadol forte').paddingLeft(10),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Text(
                      'Tipo:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Expanded(
                      child: const Text('Pastilla').paddingLeft(10),
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
                      child: const Text('20').paddingLeft(10),
                    ),
                  ],
                ),
              ],
            ).paddingLeft(10),
          ),
          Container(
            width: 70,
            height: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: const Center(
              child: Text(
                '300 Mg',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 21,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
            ),
          )
        ],
      ),
    );
  }
}
