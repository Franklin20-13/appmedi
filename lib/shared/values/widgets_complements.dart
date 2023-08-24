part of 'values.dart';

Row row(
    {required List<Widget> list,
    MainAxisAlignment mainAxis = MainAxisAlignment.spaceBetween}) {
  return Row(
    mainAxisAlignment: mainAxis,
    children: list,
  );
}


Color getColor(Set<MaterialState> states) {
  const Set<MaterialState> interactiveStates = <MaterialState>{
    MaterialState.pressed,
    MaterialState.hovered,
    MaterialState.focused,
  };
  if (states.any(interactiveStates.contains)) {
    return Colors.blue;
  }
  return AppColors.primaryColor;
}

Color getColorWhite(Set<MaterialState> states) {
  const Set<MaterialState> interactiveStates = <MaterialState>{
    MaterialState.pressed,
    MaterialState.hovered,
    MaterialState.focused,
  };
  if (states.any(interactiveStates.contains)) {
    return Colors.blue;
  }
  return Colors.white;
}

Container containerSeleted(
    {required BuildContext context, required Widget child}) {
  return Container(
    width: MediaQuery.of(context).size.width,
    padding: const EdgeInsets.all(10),
    child: child,
  );
}

TextFormField textFormField(
    {required BuildContext context,
    TextEditingController? controller,
    TextInputType inputType = TextInputType.text,
    ValueChanged<String?>? onSaved,
    ValueChanged<String?>? onChanged,
    VoidCallback? onEditingComplete,
    FormFieldValidator<String?> validator = validateTextField,
    TextCapitalization textCapitalization = TextCapitalization.none,
    TextInputAction? textInputAction,
    String? labelText,
    String? hintText,
    bool obscureText = false,
    String? initialValue,
    Widget? icon,
    Widget? child,
    bool isValidate = true,
    bool isBorder = false,
    bool isReadOnly = false}) {
  return TextFormField(
      controller: controller,
      keyboardType: inputType,
      textCapitalization: textCapitalization,
      onSaved: onSaved,
      onChanged: onChanged,
      validator: isValidate ? validator : null,
      readOnly: isReadOnly,
      obscureText: obscureText,
      textInputAction: textInputAction,
      initialValue: initialValue,
      onEditingComplete: onEditingComplete,
      decoration: isBorder
          ? inputDecorationBorderNone(
              context,
              label: labelText,
              hintText: hintText,
              child: child,
              icon: icon,
            )
          : inputDecoration(context,
              label: labelText, hintText: hintText, child: child, icon: icon));
}

InputDecoration inputDecoration(BuildContext context,
    {String? label, hintText, Widget? child, Widget? icon}) {
  return InputDecoration(
    labelText: label,
    hintText: hintText,
    icon: icon,
    suffixIcon: child,
    enabledBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey, width: 0.0),
    ),
    border: const OutlineInputBorder(),
    labelStyle: TextStyle(
      color: Theme.of(context).hintColor,
      fontWeight: FontWeight.bold,
    ),
  );
}

InputDecoration inputDecorationBorderNone(BuildContext context,
    {String? label, hintText, Widget? child, Widget? icon}) {
  return InputDecoration(
    labelText: label,
    hintText: hintText,
    icon: icon,
    suffixIcon: child,
    border: InputBorder.none,
    labelStyle: TextStyle(
      color: Theme.of(context).hintColor,
      fontWeight: FontWeight.bold,
    ),
  );
}

OutlineInputBorder borderText(Color color) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(28),
    borderSide: BorderSide(color: color),
    gapPadding: 10,
  );
}

DropdownButton<dynamic> dropdownButton({
  dynamic setValue,
  dynamic value,
  Icon? icon,
  List<DropdownMenuItem<dynamic>>? items,
  ValueChanged<dynamic>? onChanged,
}) {
  return DropdownButton<dynamic>(
      isExpanded: true,
      value: value,
      icon: icon,
      hint: const Row(
        children: <Widget>[
          Text('Seleccione'),
        ],
      ),
      items: items,
      onChanged: onChanged);
}





Widget textInput(
    String label, TextEditingController controller, bool isDropdown,
    {bool isRequired = true,
    int clave = 0,
    String code = '',
    String title = '',
    bool enabled = true,
    bool obscureText = false,
    TextInputType inputType = TextInputType.text,
    Widget? suffixIcon,
    bool isModifyWidget = false,
    bool isMultiEmail = false}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
    child: TextFormField(
      readOnly: isDropdown,
      keyboardType: inputType,
      controller: controller,
      enabled: enabled,
      obscureText: obscureText,
      validator: (value) {
        if (!isRequired) {
          return null;
        }

        if (value != null && value.trim().length < 3) {
          return 'Campo requerido';
        }
        if (inputType == TextInputType.emailAddress) {
          if (isMultiEmail) {
            final res = value!.split(";");
            bool isError = false;
            for (final item in res) {
              if (!FuntionsApp().isEmailValid(item)) {
                isError = true;
                break;
              }
            }
            if (isError) {
              return 'Ingrese un email valido';
            }
            return null;
          }
          if (!FuntionsApp().isEmailValid(value!)) {
            return 'Ingrese un email valido';
          }
        }
        return null;
      },
      decoration: InputDecoration(
        suffixIcon: !isModifyWidget
            ? isDropdown
                ? const Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.green,
                  )
                : const SizedBox()
            : suffixIcon,
        contentPadding: const EdgeInsets.symmetric(
          vertical: 3,
          horizontal: 10,
        ),
        labelText: label,
        //  border: const OutlineInputBorder(),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
            width: 1,
          ),
        ),
      ),
    ),
  );
}
