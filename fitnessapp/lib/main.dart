import 'package:fitnessapp/sign_in/continue_phone_number.dart';
import 'package:fitnessapp/sign_in/sign_in_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ContinuePhoneNumber(),
    );
  }
}
