import 'package:flutter/material.dart';
import '/core/app_colors.dart';
import '/core/text_style.dart';

class Buttonsselector extends StatefulWidget {
  const Buttonsselector({super.key});

  @override
  State<Buttonsselector> createState() => _ButtonsselectorState();
}

class _ButtonsselectorState extends State<Buttonsselector> {
  String? selectedButton;

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
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Container(
              decoration: BoxDecoration(
                color: selectedButton == "entrar"
                    ? AppColors.primaryvar
                    : AppColors.primary,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Center(
                  child: Text(
                    "Entrar",
                    style: selectedButton == "entrar"
                        ? TextStyles.bodyTextBlack
                        : TextStyles.bodyText.copyWith(color: AppColors.accent),
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 5),

        // Botón: Acceder sin cuenta
        GestureDetector(
          onTap: () {
            setState(() {
              selectedButton = "acceder";
            });
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 1),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(4),
                child: Center(
                  child: Text(
                    "Acceder sin cuenta",
                    textAlign: TextAlign.center,
                    style: selectedButton == "acceder"
                        ? TextStyles.bodyTextBlack
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
