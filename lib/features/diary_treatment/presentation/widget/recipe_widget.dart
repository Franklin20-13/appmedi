import 'package:app_medi/features/diary_treatment/domain/models/recipe_model.dart';
import 'package:datetime_picker_formfield_new/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:text_area/text_area.dart';

import '../../../../shared/values/values.dart';
import '../bloc/treatament/treatament_bloc.dart';

class RecipeWidget extends StatefulWidget {
  const RecipeWidget({super.key, required this.onTap});
  final VoidCallback onTap;
  @override
  State<RecipeWidget> createState() => _RecipeWidgetState();
}

class _RecipeWidgetState extends State<RecipeWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  late TextEditingController _nameController;
  late TextEditingController _descriptionController;
  late TextEditingController _timeController;
  final formatDate = DateFormat("yyyy-MM-dd");
  late DateTime? dateSelected;
  var reasonValidation = true;
  late TreatamentBloc treatamentBloc;
  RecipeModel? model;
  @override
  void initState() {
    _nameController = TextEditingController(text: '');
    _descriptionController = TextEditingController(text: '');
    _timeController = TextEditingController(text: '');
    treatamentBloc = context.read<TreatamentBloc>();
    super.initState();
  }

  clearForm() {
    _nameController = TextEditingController(text: '');
    _descriptionController = TextEditingController(text: '');
    _timeController = TextEditingController(text: '');
    dateSelected = null;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<TreatamentBloc, TreatamentState>(
            listener: (context, state) {
          if (state is LoadSuccessTreatment) {
            clearForm();
          }
        })
      ],
      child: Form(
        key: _formKey,
        child: ListView(
          children: [
            Align(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Nueva Receta.',
                    style: GoogleFonts.montserrat(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Material(
                    child: InkWell(
                      onTap: widget.onTap,
                      child: const Icon(
                        Icons.close_rounded,
                        size: 35,
                      ),
                    ),
                  )
                ],
              ),
            ),
            textInput('Nombre', _nameController, false,
                    code: '',
                    clave: 0,
                    inputType: TextInputType.text,
                    isRequired: true)
                .paddingTop(10),
            DateTimeField(
              format: formatDate,
              controller: _timeController,
              validator: (value) => validateDate(value),
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
                dateSelected = data;
              },
              onShowPicker: (context, currentValue) async {
                return showDatePicker(
                  context: context,
                  firstDate: DateTime.now(),
                  initialDate: currentValue ?? DateTime.now(),
                  lastDate: DateTime(2100),
                );
              },
            ).paddingOnly(top: 10, left: 10, right: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Descripción",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ).paddingBottom(10),
                TextArea(
                  borderRadius: 10,
                  borderColor: const Color(0xFFCFD6FF),
                  textEditingController: _descriptionController,
                  suffixIcon: Icons.attach_file_rounded,
                  onSuffixIconPressed: () => {},
                  validation: reasonValidation,
                  errorText: 'Ingrese descripción',
                ),
              ],
            ).paddingOnly(top: 15, left: 5, right: 5),
            buttonWidgetApp(
                    label: 'Guardar', onTap: saveFrom, fontSize: 20, height: 50)
                .paddingOnly(top: 10, bottom: 15),
          ],
        ),
      ),
    );
  }

  saveFrom() {
    if (_formKey.currentState!.validate()) {
      model = RecipeModel(
        name: _nameController.text,
        description: _descriptionController.text,
        date: dateSelected!,
      );
      treatamentBloc.add(TreatamentEvent.saveRecipe(model!));
    }
  }
}
