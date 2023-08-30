import 'package:app_medi/features/authentication/domain/entities/user.dart';
import 'package:app_medi/features/authentication/presentation/bloc/person/person_bloc.dart';
import 'package:app_medi/shared/values/values.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/entities/person.dart';

@RoutePage()
class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  late TextEditingController _nameController;
  late TextEditingController _lastNameController;
  late TextEditingController _userController;
  late TextEditingController _passwordController;
  late TextEditingController _comfirmPasswordController;
  late PersonBloc personBloc;
  late PersonEntity? model;
  @override
  void initState() {
    _nameController = TextEditingController(text: '');
    _lastNameController = TextEditingController(text: '');
    _userController = TextEditingController(text: '');
    _passwordController = TextEditingController(text: '');
    _comfirmPasswordController = TextEditingController(text: '');
    personBloc = context.read<PersonBloc>();
    super.initState();
  }

  clean() {
    _nameController = TextEditingController(text: '');
    _lastNameController = TextEditingController(text: '');
    _userController = TextEditingController(text: '');
    _passwordController = TextEditingController(text: '');
    _comfirmPasswordController = TextEditingController(text: '');
    model = null;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    ProgressDialog progressDialog = ProgressDialog(context);
    return MultiBlocListener(
      listeners: [
        BlocListener<PersonBloc, PersonState>(listener: (context, state) {
          if (state is InitialPerson) {
            progressDialog.show();
          }
          if (state is LoadMessagePerson) {
            progressDialog.dismiss();
            showInSnackBar(context, state.message, color: Colors.red);
          }
          if (state is LoadSuccessPerson) {
            progressDialog.dismiss();
            showInSnackBar(context, state.message);
            clean();
          }
        })
      ],
      child: Scaffold(
        backgroundColor: Colors.blueAccent,
        body: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 36,
                    ).paddingLeft(25),
                  ),
                  const Text(
                    'Registrate',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 45,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5),
                  ).paddingRight(size.width * .2),
                ],
              ),
            ).paddingTop(50),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: size.height * .8,
                decoration: const BoxDecoration(
                  color: Color(0xfffefefe),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(75),
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      width: double.infinity,
                      height: 35,
                      child: Align(
                        child: Text(
                          'Registro rápido de usuario',
                          style: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.w500,
                              color: Colors.blueAccent),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Form(
                        key: _formKey,
                        child: ListView(
                          children: [
                            inputWidgetCard(
                                    label: 'Nombres',
                                    icon: Icons.keyboard,
                                    controller: _nameController,
                                    hintText: 'Ingrese Nombres',
                                    isRequired: true)
                                .paddingTop(7),
                            inputWidgetCard(
                                    label: 'Apellidos',
                                    icon: Icons.keyboard,
                                    controller: _lastNameController,
                                    hintText: 'Ingrese Appllidos',
                                    isRequired: true)
                                .paddingTop(7),
                            inputWidgetCard(
                                    label: 'Usuario',
                                    icon: Icons.people,
                                    controller: _userController,
                                    hintText: 'Ingrese Usuario',
                                    isRequired: true)
                                .paddingTop(7),
                            inputWidgetCard(
                                    label: 'Contraseña',
                                    icon: Icons.key_rounded,
                                    controller: _passwordController,
                                    hintText: 'Ingrese Contraseña',
                                    obscureText: true,
                                    isRequired: true)
                                .paddingTop(7),
                            inputWidgetCard(
                                    label: 'Confirmar Contraseña',
                                    icon: Icons.key_rounded,
                                    controller: _comfirmPasswordController,
                                    hintText: 'Repita la contraseña',
                                    obscureText: true,
                                    isRequired: true)
                                .paddingTop(7),
                            buttonWidgetApp(
                              label: 'Guardar',
                              height: 50,
                              fontSize: 20,
                              onTap: registerUser,
                            ).paddingOnly(top: 10, bottom: 15),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "¿Ya tienes una cuenta?",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Material(
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text(
                                      "Ingresar",
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blueAccent,
                                      ),
                                    ).paddingLeft(10),
                                  ),
                                ),
                              ],
                            ).paddingBottom(15)
                          ],
                        ).paddingOnly(left: 15, right: 15),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  registerUser() {
    if (_formKey.currentState!.validate()) {
      if (_passwordController.text != _comfirmPasswordController.text) {
        showInSnackBar(context, 'La contraseñas no coinciden',
            color: Colors.red);
        return;
      }
      model = PersonEntity(
        lastName: _lastNameController.text,
        name: _nameController.text,
        user: UserEntity(
          pass: _passwordController.text,
          role: 0,
          userName: _userController.text,
        ),
      );
      personBloc.add(PersonEvent.savePerson(model!));
    }
  }
}
