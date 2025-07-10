import 'package:flutter/material.dart';
import 'package:login_marquesada/core/app_colors.dart';
import 'package:login_marquesada/core/text_style.dart';

class Userselector extends StatefulWidget {
  const Userselector({super.key});

  @override
  State<Userselector> createState() => _UserselectorState();
}

class _UserselectorState extends State<Userselector> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 5, right: 30, left: 30, bottom: 30),
          // padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              //Texto
              Text("¡Bienvenido!", style: TextStyles.bodyTextTitle),
              SizedBox(height: 5),
              Text(
                "Entra y descubre lo que tenemos para ti ",
                style: TextStyles.bodyText,
              ),
              SizedBox(height: 50),
              TextField(
                style: TextStyles.bodyText,
                cursorColor: AppColors.accent,
                decoration: InputDecoration(
                  hintText: "Introduce tu email",
                  hintStyle: TextStyle(
                    color: Colors.white70,
                  ),
                  prefixIcon: Icon(Icons.person),
                  prefixIconColor: AppColors.accent,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white70),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: AppColors.accent, width: 2),
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
