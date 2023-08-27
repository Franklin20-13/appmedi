// ignore_for_file: unnecessary_type_check
import 'package:auto_route/auto_route.dart';
import 'package:intl/intl.dart';

class FuntionsApp {
  final int limitHours = 24;
  String getFormattedDate(DateTime date) {
    /// outputFormat - convert into format you want to show.
    var outputFormat = DateFormat('dd/MM/yyyy');
    var outputDate = outputFormat.format(date);

    return outputDate.toString();
  }

  DateTime parseData(DateTime data) {
    final date = DateFormat('yyyy-MM-dd').format(data);
    return DateTime.parse("$date 00:00:00");
  }

  bool minorDate(DateTime date1, DateTime date2) {
    bool state = false;
    if (date1.day < date2.day &&
        date1.month < date2.month &&
        date1.year < date2.year) {
      state = true;
    }
    return state;
  }

  String primeraLetraMayuscula(String name) {
    String primeraLetra = name.substring(0, 1).toUpperCase();
    String restoDeLaCadena = name.substring(1).toLowerCase();
    return primeraLetra + restoDeLaCadena;
  }

  String slice(String subject, [int start = 0, int end = 0]) {
    if (subject is! String) {
      return '';
    }

    int realEnd;
    int realStart = start < 0 ? subject.length + start : start;
    if (end is! int) {
      realEnd = subject.length;
    } else {
      realEnd = end < 0 ? subject.length + end : end;
    }

    return subject.substring(realStart, realEnd);
  }

  bool isEmailValid(String email) {
    final regex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    return regex.hasMatch(email);
  }

  List<Map<String, dynamic>> listMap(dynamic items) {
    List<Map<String, dynamic>> list = [];
    for (final item in items) {
      list.add(item.toMap());
    }
    return list;
  }
}
