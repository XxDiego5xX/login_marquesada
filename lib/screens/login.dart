import 'package:flutter/material.dart';
import 'package:login_marquesada/components/WelcomeMessage.dart';
import '../components/buttonsSelector.dart';
import '../components/checkSelector.dart';
import '../components/logoInf.dart';
import '../components/passwordInf.dart';
import '../components/userSelector.dart';
import '../core/app_colors.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          decoration: const BoxDecoration(
            color: AppColors.accent, // Color azul
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              const Logoinf(),
              SizedBox(height: 15),
              Welcomemessage(),
              Userselector(),
              SizedBox(height: 10),
              Passwordinf(),
              Checkselector(),
              SizedBox(height: 40),
              Buttonsselector(),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 10, bottom: 50, top: 70),
                  child: Text(
                    "Versión 3.7.1",
                    style: TextStyle(color: AppColors.secondary),
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
