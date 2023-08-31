import 'package:app_medi/shared/my_assets.dart';
import 'package:app_medi/shared/values/values.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../config/custom_icons.dart';
import '../../../../shared/values/functions.dart';
import '../../../authentication/presentation/bloc/session/session_bloc.dart';

class ProfileHomeView extends StatefulWidget {
  const ProfileHomeView({super.key});

  @override
  State<ProfileHomeView> createState() => _ProfileHomeViewState();
}

class _ProfileHomeViewState extends State<ProfileHomeView> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlocBuilder<SessionBloc, SessionState>(builder: (context, state) {
      if (state is Authenticated) {
        return Container(
          width: double.infinity,
          height: double.infinity,
          color: AppColors.primaryColor,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: SizedBox(
                  height: size.height,
                  width: size.width,
                  child: Image.asset(
                    MyAsstes.background,
                    fit: BoxFit.cover,
                  ).paddingTop(15),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: SizedBox(
                    height: size.height * .7,
                    width: size.width,
                    child: Image.asset(
                      MyAsstes.patient,
                      fit: BoxFit.cover,
                    ).paddingOnly(left: 20, right: 15, top: 7)),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: size.width,
                  height: size.height * .4 + 40,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: ListView(
                    children: [
                      const Center(
                        child: Text(
                          'Mi Pefil',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                       Center(
                        child: Text(
                          '${FuntionsApp().primeraLetraMayuscula(state.user.name)} ${state.user.lastName}',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                            color: AppColors.primaryColor
                          ),
                        ),
                      ).paddingTop(10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          cardTratamientoWidget('Tratamientos Culminados', '2'),
                          cardTratamientoWidget('Tratamientos En Proceso', '0'),
                          cardTratamientoWidget(
                              'Tratamiendos Supervisados', '3'),
                        ],
                      ).paddingTop(15),
                      const Center(
                        child: Text(
                          'Mis Tratamiendos de hoy',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                            color: AppColors.primaryColor
                          ),
                        ),
                      ).paddingTop(10),
                      Container(
                        width: double.infinity,
                        height: 170,
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
                              width: size.width * .3,
                              height: double.infinity,
                              decoration: const BoxDecoration(
                                color: AppColors.primaryColor,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  bottomLeft: Radius.circular(20),
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    DateTime.now().day.toString(),
                                    style: const TextStyle(
                                      fontSize: 50,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    tratamientoItemWidget().paddingOnly(
                                      left: 15,
                                      bottom: 10,
                                    ),
                                    tratamientoItemWidget().paddingOnly(
                                      left: 15,
                                      bottom: 10,
                                    ),
                                    tratamientoItemWidget().paddingOnly(
                                      left: 15,
                                      bottom: 10,
                                    ),
                                    tratamientoItemWidget().paddingOnly(
                                      left: 15,
                                      bottom: 10,
                                    )
                                  ],
                                ).paddingTop(5),
                              ),
                            ),
                          ],
                        ),
                      ).paddingTop(15),
                      buttonWidgetApp(
                        label: 'Cerrar Sesión',
                        height: 50,
                        width: 150,
                        fontSize: 20,
                        onTap: () {
                          BlocProvider.of<SessionBloc>(context)
                              .add(LoggedOut());
                        },
                      ).paddingOnly(top: 15, bottom: 15, left: 25, right: 25),
                    ],
                  ).paddingOnly(left: 15, right: 15),
                ),
              )
            ],
          ),
        );
      }
      return Container();
    });
  }

  Row tratamientoItemWidget() {
    return Row(
      children: [
        const Icon(
          MediIcons.user_md,
          size: 30,
        ),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Tratamiento para  gripe',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            Text('12:30 PM')
          ],
        ).paddingLeft(10)
      ],
    );
  }

  Container cardTratamientoWidget(String name, String value) {
    return Container(
      width: 120,
      height: 170,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 1.0,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            name,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
          ),
          Text(
            value,
            style: const TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ).paddingTop(5)
        ],
      ).paddingAll(5),
    );
  }
}
