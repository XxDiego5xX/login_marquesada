import 'package:flutter/material.dart';
import 'package:login_marquesada/core/app_colors.dart';
import 'package:login_marquesada/core/text_style.dart';

class Checkselector extends StatefulWidget {
  const Checkselector({super.key});

  @override
  State<Checkselector> createState() => _CheckselectorState();
}

class _CheckselectorState extends State<Checkselector> {
  bool check = false; // Estado inicial

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Checkbox(
          value: check,
          onChanged: (newCheck) {
            setState(() {
              check = newCheck!;
            });
          },
          activeColor: AppColors.accent,
          checkColor: AppColors.primary,
          fillColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
              if (states.contains(MaterialState.selected)) {
                return AppColors.accent;
              }
              return Colors.white;
            },
          ),
        ),

        const Text("Recordar sesión", style: TextStyles.bodyText),
      ],
    );
  }
}
