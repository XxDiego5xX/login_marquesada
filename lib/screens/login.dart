import 'package:flutter/material.dart';
import '../components/buttonsSelector.dart';
import '../components/checkSelector.dart';
import '../components/logoInf.dart';
import '../components/passwordInf.dart';
import '../components/userSelector.dart';
//04:40:40 video flutter curso

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Logoinf(),
        Userselector(),
        Passwordinf(),
        Checkselector(),
        Buttonsselector(),

        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 10,
                right: 25,
              ),
              child: Text("Versión 3.7.1"),
            ),
          ],
        )
      ],
    );
  }
}
