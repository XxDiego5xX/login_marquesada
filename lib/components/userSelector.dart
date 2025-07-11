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
          padding: const EdgeInsets.only(right: 30, left: 30),
          // padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              SizedBox(height: 50),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text("Usuario", style: TextStyles.bodyTextPrimary)],
              ),
              SizedBox(height: 5),
              TextField(
                style: TextStyles.bodyTextPrimary,
                cursorColor: AppColors.primary,

                decoration: InputDecoration(
                  filled: true,
                  // Activa el fondo
                  fillColor: Colors.lightBlue[50],
                  // Color de fondo
                  // fillColor: Colors.lightBlue[50], // Color de fondo
                  hintText: "Introduce tu email",
                  hintStyle: TextStyle(color: AppColors.primary),
                  prefixIcon: Icon(Icons.person),
                  prefixIconColor: AppColors.secondary,

                  // Bordes
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: AppColors.backgroundComponent,
                      width: 1.5,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),

                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.lightBlue, width: 2),
                    borderRadius: BorderRadius.circular(8),
                  ),

                  disabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: AppColors.primary,
                      width: 1.5,
                    ),
                    borderRadius: BorderRadius.circular(8),
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
