part of 'values.dart';

String? validateTextField(String? value) {
  if (value!.isEmpty) {
    return 'Dato requerido';
  }
  return null;
}

String? validatePassWord(String? value) {
  if (value!.isEmpty) {
    return 'contraseña requerida';
  }
  

  return null;
}

String? validateDate(DateTime? value) {
  if (value == null) {
    return 'Dato requerido';
  }
  return null;
}

String? validaHora(DateTime? value, DateTime? fecha) {
  if (value == null) {
    return 'seleccione hora';
  }
  final now = DateTime.now();
  if (fecha == null) {
    return 'seleccione fecha';
  }

  if (value.hour <= now.hour &&
      value.minute < now.minute &&
      fecha.day == now.day &&
      fecha.month == now.month) {
    return 'esta hora ya pasó';
  }
  return null;
}

String? validateCodeProfetional(String value, String? code) {
  if (value != code) {
    return 'El token incorrecto';
  }
  return null;
}
