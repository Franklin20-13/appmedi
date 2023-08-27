import 'package:app_medi/shared/models/calendar.dart';
import 'package:app_medi/shared/values/values.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../../../../shared/values/functions.dart';

class CalendarWidget extends StatefulWidget {
  final ValueChanged<DateTime> onchange;
  const CalendarWidget({super.key, required this.onchange});

  @override
  State<CalendarWidget> createState() => _CalendarWidgetState();
}

class _CalendarWidgetState extends State<CalendarWidget> {
  bool isModifyDate = false;
  late DateTime dateLast;
  DateTime coutDaysBack = DateTime.now();
  DateTime coutDaysNex = DateTime.now();
  @override
  void initState() {
    final date = DateFormat('yyyy-MM-dd').format(coutDaysBack);
    final newDate = DateTime.parse("$date 00:00:00");
    final date2 = DateFormat('yyyy-MM-dd').format(coutDaysBack);
    final newDate2 = DateTime.parse("$date2 00:00:00");
    coutDaysBack = newDate.add(const Duration(days: -8));
    coutDaysNex = newDate2.add(const Duration(days: 8));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      height: 190,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.colorBoxShadow,
            offset: Offset(2, 2),
          )
        ],
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 50,
            decoration: const BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
            ),
            child: Center(
              child: Text(
                '${getMonth(getDateNow().month).name} ${getDateNow().year}',
                style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontSize: 21,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      getDateNow(days: -1, isOnTap: true);
                    });
                  },
                  child: const Icon(
                    Icons.arrow_back_ios_new_rounded,
                    size: 30,
                    color: AppColors.primaryColor,
                  ),
                ),
                Text(
                  getDateNow().day.toString(),
                  style: GoogleFonts.montserrat(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                      color: Colors.black.withOpacity(0.8)),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      getDateNow(days: 1, isOnTap: true);
                    });
                  },
                  child: const Icon(
                    Icons.arrow_forward_ios,
                    size: 30,
                    color: AppColors.primaryColor,
                  ),
                ),
              ],
            ),
          ),
          Text(
            DateFormat.EEEE("es").format(getDateNow()),
            style: GoogleFonts.montserrat(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ).paddingBottom(10)
        ],
      ),
    );
  }

  Month getMonth(int month) {
    return months.where((e) => e.id == month).first;
  }

  DateTime getDateNow({int days = 0, bool isOnTap = false}) {
    if (isModifyDate) {
      if (isOnTap) {
        dateLast = dateLast.add(Duration(days: days));
        isModifyDate = true;
        widget.onchange(dateLast);
        return dateLast;
      }
      widget.onchange(dateLast);
      return dateLast;
    }
    DateTime date = FuntionsApp().parseData(DateTime.now());
    if (isOnTap) {
      dateLast = date.add(Duration(days: days));
      isModifyDate = true;
    }
    widget.onchange(date);
    return date;
  }
}
