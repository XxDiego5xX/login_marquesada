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
                children: [Text("Usuario", style: TextStyles.bodyText)],
              ),
              SizedBox(height: 5),
              TextField(
                style: TextStyles.bodyText,
                cursorColor: AppColors.accent,
                decoration: InputDecoration(
                  hintText: "Introduce tu email",
                  hintStyle: TextStyle(color: Colors.white70),
                  prefixIcon: Icon(Icons.person),
                  prefixIconColor: AppColors.accent,

                  // Borde cuando el campo está habilitado pero no enfocado
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white70),
                    borderRadius: BorderRadius.circular(8),
                  ),

                  // Borde enfocado
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.accent, width: 2),
                    borderRadius: BorderRadius.circular(8),
                  ),

                  // Borde predeterminado
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white70),
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
