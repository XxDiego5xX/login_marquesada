import 'package:flutter/material.dart';
import 'package:login_marquesada/core/text_style.dart';
import '../core/app_colors.dart';

class Passwordinf extends StatefulWidget {
  const Passwordinf({super.key});

  @override
  State<Passwordinf> createState() => _PasswordinfState();
}

class _PasswordinfState extends State<Passwordinf> {
  bool _obscureText = true; // Estado para mostrar/ocultar contraseña

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            right: 30,
            left: 30,
            top: 10,
            bottom: 10,
          ),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Contraseña", style: TextStyles.bodyTextPrimary),
                ],
              ),
              const SizedBox(height: 5),
              TextField(
                style: TextStyles.bodyTextPrimary,
                cursorColor: AppColors.primary,
                obscureText: _obscureText,
                decoration: InputDecoration(
                  filled: true,
                  // Activa el fondo
                  fillColor: Colors.lightBlue[50],
                  // Color de fondo
                  hintText: "Introduce tu contraseña",
                  hintStyle: TextStyle(color: AppColors.primary),
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
                      color: AppColors.secondary,
                    ),
                  ),

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
