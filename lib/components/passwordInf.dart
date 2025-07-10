import 'package:flutter/material.dart';
import 'package:login_marquesada/core/text_style.dart';
import '../core/app_colors.dart';

class Passwordinf extends StatefulWidget {
  const Passwordinf({super.key});

  @override
  State<Passwordinf> createState() => _PasswordinfState();
}

class _PasswordinfState extends State<Passwordinf> {
  bool _obscureText = true; // Contraseña oculta

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: TextField(
        style: TextStyles.bodyTextPrimary,
        cursorColor: AppColors.primary,
        obscureText: _obscureText,
        decoration: InputDecoration(
          hintText: "Introduce tu contraseña",
          prefixIcon: const Icon(Icons.key),
          prefixIconColor: AppColors.secondary,
          suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                _obscureText = !_obscureText;
              });
            },
            child: Icon(
              _obscureText ? Icons.visibility : Icons.visibility_off,
              color: _obscureText ? AppColors.secondary : Colors.grey,
            ),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.secondary),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.primary, width: 2),
          ),
        ),
      ),
    );
  }
}
