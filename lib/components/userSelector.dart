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
          padding: const EdgeInsets.all(30),
          child: TextField(
            style: TextStyles.bodyTextPrimary,
            cursorColor: AppColors.primary,
            decoration: InputDecoration(
              hintText: "Introduce tu email",
              prefixIcon: Icon(Icons.person),
              prefixIconColor: AppColors.secondary,
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.secondary),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.primary, width: 2),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
