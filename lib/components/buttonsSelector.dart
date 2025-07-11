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
            padding: const EdgeInsets.symmetric(horizontal: 110, vertical: 10),
            child: Container(
              decoration: BoxDecoration(
                color: selectedButton == "entrar"
                    ? AppColors.accent
                    : AppColors.secondary,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color:  Colors.white60, width: 2),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Center(
                  child: Text(
                    "Entrar",
                    style: selectedButton == "entrar"
                        ? TextStyles
                              .bodyTextBlack
                        : TextStyles.bodyText.copyWith(
                            color: AppColors.accent,
                          ),
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
            padding: const EdgeInsets.symmetric(horizontal: 110, vertical: 10),
            child: Container(
              decoration: BoxDecoration(
                color: selectedButton == "acceder"
                    ? AppColors.accent
                    : AppColors.secondary,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.white60, width: 2),
              ),
              child: Padding(
                padding: const EdgeInsets.all(4),
                child: Center(
                  child: Text(
                    "Acceder sin cuenta",
                    textAlign: TextAlign.center,
                    style: selectedButton == "acceder"
                        ? TextStyles
                        .bodyTextBlack
                        : TextStyles.bodyText.copyWith(
                      color: AppColors.accent,
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
