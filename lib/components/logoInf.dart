import 'package:flutter/material.dart';

class Logoinf extends StatelessWidget {
  const Logoinf({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 20), // Espaciado
        Image.asset("assets/images/logo_marquesada_hd.png", width: 300),
        SizedBox(height: 30), // Espaciado
        //Texto
        Text("¡Bienvenido!", style: TextStyle(fontSize: 30)),
        SizedBox(height: 5),
        Text(
          "Entra y descubre lo que tenemos para ti.",
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
