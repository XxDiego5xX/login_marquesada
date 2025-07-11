import 'package:flutter/material.dart';
import 'package:login_marquesada/components/WelcomeMessage.dart';
import '../components/buttonsSelector.dart';
import '../components/checkSelector.dart';
import '../components/logoInf.dart';
import '../components/passwordInf.dart';
import '../components/userSelector.dart';
import '../core/app_colors.dart';

//04:40:40 video flutter curso

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Logoinf(),

        // Cuadro azul redondeado
        Container(
          decoration: const BoxDecoration(
            color: AppColors.secondary, // Color azul
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
            ),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Welcomemessage(),
              Userselector(),
              SizedBox(height: 10),
              Passwordinf(),
              SizedBox(height: 10),
              Checkselector(),
              SizedBox(height: 10),
              Buttonsselector(),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 10, bottom: 50, top: 80),
                  child: Text(
                    "Versión 3.7.1",
                    style: TextStyle(color: AppColors.accent),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}