import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_marquesada/core/text_style.dart';

class Welcomemessage extends StatelessWidget {
  const Welcomemessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Texto
        Center(
          child: Text("¡Bienvenido!", style: TextStyles.bodyTextTitlePrimary),
        ),
        SizedBox(height: 5),
        Text(
          "Entra y descubre lo que tenemos para ti ",
          style: TextStyle(color: Color(0xFF0055C2), fontSize: 16),
        ),
      ],
    );
  }
}
