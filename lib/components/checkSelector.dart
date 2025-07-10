import 'package:flutter/material.dart';
import 'package:login_marquesada/core/app_colors.dart';

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
          activeColor: AppColors.primary,
          checkColor: AppColors.accent,
        ),
        const Text("Recordar sesión", style: TextStyle(fontSize: 15 ),),
      ],
    );
  }
}
