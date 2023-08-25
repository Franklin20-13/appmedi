import 'package:app_medi/routes/router.gr.dart';
import 'package:app_medi/shared/my_assets.dart';
import 'package:app_medi/shared/values/values.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  late TextEditingController _userController;
  late TextEditingController _passwordController;
  @override
  void initState() {
    _userController = TextEditingController(text: '');
    _passwordController = TextEditingController(text: '');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Stack(
        children: [
          Positioned(
            bottom: size.height * .5 + 80,
            left: 0,
            child: Image.asset(
              MyAsstes.logo,
              height: 260,
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: size.height * .5 + 90,
              decoration: const BoxDecoration(
                color: Color(0xfffefefe),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(75),
                ),
              ),
              child: ListView(
                children: [
                  Center(
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w500,
                      ),
                    ).paddingTop(20),
                  ),
                  inputWidgetCard(
                    label: 'Usuario',
                    icon: Icons.people,
                    controller: _userController,
                    hintText: 'Ingrese Usuario',
                  ).paddingTop(10),
                  inputWidgetCard(
                    label: 'Contraseña',
                    icon: Icons.key_outlined,
                    controller: _passwordController,
                    hintText: 'Ingrese contraseña',
                  ).paddingTop(8),
                  buttonWidgetApp(
                    label: 'Ingresar',
                    onTap: () {},
                  ).paddingOnly(
                    top: 15,
                    bottom: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "¿Aun no estas registrado?",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Material(
                        child: InkWell(
                          onTap: (){
                            context.router.push(const RegisterView());
                          },
                          child: const Text(
                            "Registrate",
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
          )
        ],
      ),
    );
  }
}
