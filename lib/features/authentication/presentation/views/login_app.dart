import 'package:app_medi/features/authentication/presentation/bloc/session/session_bloc.dart';
import 'package:app_medi/shared/my_assets.dart';
import 'package:app_medi/shared/values/values.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../routes/router.gr.dart';
import '../../../home/presentation/views/home.dart';
import '../bloc/login/login_bloc.dart';

@RoutePage()
class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  late TextEditingController _userController;
  late TextEditingController _passwordController;
  late LoginBloc loginBloc;
  @override
  void initState() {
    _userController = TextEditingController(text: '');
    _passwordController = TextEditingController(text: '');
    loginBloc = context.read<LoginBloc>();
    super.initState();
  }

  clearForm() {
    _userController = TextEditingController(text: '');
    _passwordController = TextEditingController(text: '');
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return MultiBlocListener(
      listeners: [
        BlocListener<LoginBloc, LoginState>(listener: (context, state) {
          if (state is LoggedIn) {}
          if (state is LoginFail) {
            showInSnackBar(context, state.error, color: Colors.red);
          }
          if (state is Successfully) {
            BlocProvider.of<SessionBloc>(context).add(LoggedIn(state.user));
            clearForm();
          }
        })
      ],
      child: BlocBuilder<SessionBloc, SessionState>(
        builder: (context, state) {
          if (state is Authenticated) {
            return HomeView(user: state.user);
          }
          if (state is Unauthenticated) {
            return loginViewWidget(size, context);
          }
          return const Scaffold();
        },
      ),
    );
  }

  Scaffold loginViewWidget(Size size, BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
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
              child: Form(
                key: _formKey,
                child: ListView(
                  children: [
                    Center(
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w500,
                        ),
                      ).paddingTop(9),
                    ),
                    inputWidgetCard(
                            label: 'Usuario',
                            icon: Icons.people,
                            controller: _userController,
                            hintText: 'Ingrese Usuario',
                            isRequired: true)
                        .paddingTop(10),
                    inputWidgetCard(
                            label: 'Contraseña',
                            icon: Icons.key_outlined,
                            controller: _passwordController,
                            hintText: 'Ingrese contraseña',
                            isRequired: true,
                            obscureText: true)
                        .paddingTop(8),
                    buttonWidgetApp(
                      label: 'Ingresar',
                      height: 50,
                      width: 150,
                      fontSize: 20,
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          loginBloc.add(LoginUser(
                              _userController.text, _passwordController.text));
                        }
                      },
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
                            onTap: () {
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
            ),
          )
        ],
      ),
    );
  }
}
