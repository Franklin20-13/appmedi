import 'package:app_medi/shared/values/values.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  late TextEditingController _nameController;
  late TextEditingController _lastNameController;
  late TextEditingController _userController;
  late TextEditingController _passwordController;
  late TextEditingController _comfirmPasswordController;
  @override
  void initState() {
    _nameController = TextEditingController(text: '');
    _lastNameController = TextEditingController(text: '');
    _userController = TextEditingController(text: '');
    _passwordController = TextEditingController(text: '');
    _comfirmPasswordController = TextEditingController(text: '');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
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
                          color: Colors.blueAccent
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      children: [
                        inputWidgetCard(
                          label: 'Nombres',
                          icon: Icons.keyboard,
                          controller: _nameController,
                          hintText: 'Ingrese Nombres',
                        ).paddingTop(7),
                        inputWidgetCard(
                          label: 'Apellidos',
                          icon: Icons.keyboard,
                          controller: _lastNameController,
                          hintText: 'Ingrese Appllidos',
                        ).paddingTop(7),
                        inputWidgetCard(
                          label: 'Usuario',
                          icon: Icons.people,
                          controller: _userController,
                          hintText: 'Ingrese Usuario',
                        ).paddingTop(7),
                        inputWidgetCard(
                          label: 'Contraseña',
                          icon: Icons.key_rounded,
                          controller: _passwordController,
                          hintText: 'Ingrese Contraseña',
                          obscureText: true
                        ).paddingTop(7),
                        inputWidgetCard(
                          label: 'Confirmar Contraseña',
                          icon: Icons.key_rounded,
                          controller: _comfirmPasswordController,
                          hintText: 'Repita la contraseña',
                          obscureText: true
                        ).paddingTop(7),
                        buttonWidgetApp(
                          label: 'Ingresar',
                          onTap: () {},
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
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
