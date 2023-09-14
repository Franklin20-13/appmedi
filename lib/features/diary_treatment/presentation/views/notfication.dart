import 'package:app_medi/features/background/DataBase/collectons/notification_collection.dart';
import 'package:app_medi/features/diary_treatment/presentation/bloc/notifications/notifications_bloc.dart';
import 'package:app_medi/features/diary_treatment/presentation/bloc/treatament/treatament_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import '../../../../shared/values/functions.dart';
import '../../../../shared/values/values.dart';

class NotificationView extends StatefulWidget {
  const NotificationView({super.key});

  @override
  State<NotificationView> createState() => _NotificationViewState();
}

class _NotificationViewState extends State<NotificationView> {
  late NotificationsBloc notificationsBloc;
  late TreatamentBloc treatamentBloc;
  @override
  void initState() {
    notificationsBloc = context.read<NotificationsBloc>();
    notificationsBloc.add(const NotificationsEvent.getNotifications(false));
    treatamentBloc = context.read<TreatamentBloc>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    ProgressDialog progressDialog = ProgressDialog(context);
    return MultiBlocListener(
      listeners: [
        BlocListener<TreatamentBloc, TreatamentState>(
            listener: (context, state) {
          if (state is InitialTreatment) {
            progressDialog.show();
          }
          if (state is LoadMessageTreatment) {
            progressDialog.dismiss();
            showInSnackBar(context, state.message, color: Colors.red);
          }
          if (state is LoadSuccessTreatment) {
            progressDialog.dismiss();
            showInSnackBar(context, state.message);
            notificationsBloc.add(const NotificationsEvent.getNotifications(false));
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
              height: size.height * .2,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.notifications,
                    size: 80,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: size.width,
                height: size.height * .7,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 35,
                      child: Align(
                        child: Text(
                          'Tomas de hoy',
                          style: GoogleFonts.montserrat(
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ).paddingTop(5),
                    ),
                    Expanded(
                      child: ListView(
                        children: [
                          BlocBuilder<NotificationsBloc, NotificationsState>(
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
                                      ).paddingTop(size.height * .2 + 55),
                                  loadSuccess: (e) => Column(
                                        children: List.generate(
                                          e.items.length,
                                          (index) => itemsNotification(
                                            size,
                                            e.items[index]!,
                                          ).paddingBottom(15),
                                        ),
                                      ),
                                  loadMessage: (_) => Container());
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ).paddingOnly(left: 20, right: 20),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget itemsNotification(Size size, NotificationCollection item) {
    return Container(
      height: 120,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        border: Border.all(
          color: Colors.black,
          width: 1.0,
        ),
      ),
      child: Row(
        children: [
          Container(
            width: size.width * .2,
            height: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
            ),
            child: (item.notifyCompleted == item.quantity)
                ? const Icon(
                    Icons.notifications_off,
                    size: 35,
                    color: Colors.white,
                  )
                : const Icon(
                    Icons.notifications,
                    size: 35,
                    color: Colors.white,
                  ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    FuntionsApp().primeraLetraMayuscula(item.titleNotification),
                    style: GoogleFonts.montserrat(
                        fontSize: 19, fontWeight: FontWeight.bold),
                  ).paddingOnly(right: 5),
                  Text(FuntionsApp().primeraLetraMayuscula(item.description))
                      .paddingOnly(right: 5),
                  SizedBox(
                    width: 100,
                    child: Chip(
                      label: Text(
                        DateFormat('HH:mm a').format(
                            FuntionsApp().parseTime(DateTime.parse(item.hour))),
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      backgroundColor:
                          item.tomado ? Colors.green : AppColors.primaryColor,
                    ),
                  )
                ],
              ).paddingLeft(10),
            ),
          ),
          if (item.notifyCompleted == item.quantity && !item.tomado)
            InkWell(
              onTap: () {
                treatamentBloc.add(TreatamentEvent.addThoma(item));
              },
              child: Container(
                width: 70,
                height: double.infinity,
                decoration: const BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: const Icon(
                  Icons.check,
                  size: 35,
                  color: Colors.white,
                ),
              ),
            )
          else if (item.tomado)
            Container(
              width: 70,
              height: double.infinity,
              decoration: const BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: const Icon(
                Icons.accessibility_new_outlined,
                size: 35,
                color: Colors.white,
              ),
            )
        ],
      ),
    );
  }
}
