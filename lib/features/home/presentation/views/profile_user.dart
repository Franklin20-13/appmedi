import 'package:app_medi/features/diary_treatment/presentation/bloc/notifications/notifications_bloc.dart';
import 'package:app_medi/features/home/presentation/bloc/people/people_bloc.dart';
import 'package:app_medi/shared/my_assets.dart';
import 'package:app_medi/shared/values/values.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:intl/intl.dart';
import '../../../../shared/values/functions.dart';
import '../../../authentication/presentation/bloc/session/session_bloc.dart';
import '../../../background/DataBase/collectons/notification_collection.dart';

class ProfileHomeView extends StatefulWidget {
  const ProfileHomeView({super.key});

  @override
  State<ProfileHomeView> createState() => _ProfileHomeViewState();
}

class _ProfileHomeViewState extends State<ProfileHomeView> {
  late NotificationsBloc notificationsBloc;
  late PeopleBloc peopleBloc;
  @override
  void initState() {
    peopleBloc = context.read<PeopleBloc>();
    peopleBloc.add(const PeopleEvent.getDashboard());
    notificationsBloc = context.read<NotificationsBloc>();
    notificationsBloc.add(const NotificationsEvent.getNotifications(true));
    super.initState();
  }

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
                              color: AppColors.primaryColor),
                        ),
                      ).paddingTop(10),
                      SizedBox(
                        width: double.infinity,
                        height: 300,
                        child: BlocBuilder<PeopleBloc, PeopleState>(
                          builder: (context, state) {
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
                                    ).paddingTop(10),
                                loadSuccess: (e) {
                                  return ListView(
                                    scrollDirection: Axis.horizontal,
                                    children: [
                                      cardTratamientoWidget(
                                              'Tratamientos pedientes de revición',
                                              e.dashboard.treatmentC.toString())
                                          .paddingRight(10),
                                      cardTratamientoWidget(
                                              'Tratamientos En Proceso',
                                              e.dashboard.treatmentP.toString())
                                          .paddingRight(10),
                                      cardTratamientoWidget(
                                          'Tratamiendos Supervisados',
                                          e.dashboard.treatmentS.toString()),
                                    ],
                                  );
                                },
                                loadMessage: (_) => Container());
                          },
                        ),
                      ),
                      const Center(
                        child: Text(
                          'Mis Tratamiendos de hoy',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                              color: AppColors.primaryColor),
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
                                child: BlocBuilder<NotificationsBloc,
                                    NotificationsState>(
                                  builder: (context, state) {
                                    return state.map(
                                        initial: (_) => SpinKitThreeBounce(
                                              size: 30,
                                              itemBuilder:
                                                  (BuildContext context,
                                                      int index) {
                                                return DecoratedBox(
                                                  decoration: BoxDecoration(
                                                    color: index.isEven
                                                        ? AppColors.primaryColor
                                                        : AppColors.mainColor,
                                                  ),
                                                );
                                              },
                                            ).paddingTop(10),
                                        loadSuccess: (e) => Column(
                                              children: List.generate(
                                                e.items.length,
                                                (index) =>
                                                    tratamientoItemWidget(
                                                  size,
                                                  e.items[index]!,
                                                ).paddingBottom(10),
                                              ),
                                            ).paddingOnly(top: 2, left: 8),
                                        loadMessage: (_) => Container());
                                  },
                                ),
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

  Row tratamientoItemWidget(Size size, NotificationCollection item) {
    return Row(
      children: [
        Icon(
          item.notifyCompleted > 0
              ? Icons.notifications_off
              : Icons.notifications_active,
          size: 30,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              item.titleNotification,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            Text(DateFormat('HH:mm a')
                .format(FuntionsApp().parseTime(DateTime.parse(item.hour))))
          ],
        ).paddingLeft(10),
        if (item.tomado)
          const Icon(
            Icons.check,
            size: 30,
          ).paddingLeft(10),
      ],
    );
  }

  Container cardTratamientoWidget(String name, String value) {
    return Container(
      width: 130,
      height: 140,
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
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
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
