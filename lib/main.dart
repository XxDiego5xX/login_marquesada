import 'package:flutter/material.dart';
import 'package:login_marquesada/screens/login.dart';
import 'core/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        // appBar: AppBar(
        //   backgroundColor: Colors.white,
        //   foregroundColor: Colors.black,
        // ),
        body: login(),
      ),
    );
  }
}
