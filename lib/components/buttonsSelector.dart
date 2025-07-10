import 'package:flutter/material.dart';
import '/core/app_colors.dart';
import '/core/text_style.dart';

class Buttonsselector extends StatefulWidget {
  const Buttonsselector({super.key});

  @override
  State<Buttonsselector> createState() => _ButtonsselectorState();
}

class _ButtonsselectorState extends State<Buttonsselector> {
  String? selectedButton; // Controla cuál botón está activo

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Botón: Entrar
        GestureDetector(
          onTap: () {
            setState(() {
              selectedButton = "entrar";
            });
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 10),
            child: Container(
              decoration: BoxDecoration(
                color: selectedButton == "entrar"
                    ? AppColors.primaryvar
                    : AppColors.primary,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Center(
                  child: Text(
                    "Entrar",
                    style: selectedButton == "entrar"
                        ? TextStyles
                              .bodyText // Texto blanco
                        : TextStyles.bodyText.copyWith(
                            color: AppColors.accent,
                          ), // Texto color cuando no activo
                  ),
                ),
              ),
            ),
          ),
        ),
        // Botón: Acceder sin cuenta
        GestureDetector(
          onTap: () {
            setState(() {
              selectedButton = "acceder";
            });
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 10),
            child: Container(
              decoration: BoxDecoration(
                color: selectedButton == "acceder"
                    ? AppColors.primaryvar
                    : AppColors.accent,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: AppColors.primary, width: 1),
              ),
              child: Padding(
                padding: const EdgeInsets.all(14),
                child: Center(
                  child: Text(
                    "Acceder sin cuenta",
                    style: selectedButton == "acceder"
                        ? TextStyles.bodyText
                        : TextStyles.bodyText.copyWith(
                            color: AppColors.primary,
                          ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
