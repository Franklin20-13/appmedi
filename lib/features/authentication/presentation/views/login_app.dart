import 'package:app_medi/shared/my_assets.dart';
import 'package:app_medi/shared/values/values.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

@RoutePage()
class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Stack(
        children: [
          Positioned(
            bottom: size.height * .6+50,
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
              height: size.height * .6 +50,
              decoration: const BoxDecoration(
                color: Color(0xfffefefe),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(75),
                ),
              ),
              child: ListView(
                children: [
                  Center(
                    child: Text(
                      'Login',
                      style: GoogleFonts.montserrat(
                          fontSize: 35, fontWeight: FontWeight.w500),
                    ).paddingTop(20),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
