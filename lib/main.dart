// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:food_app/screen/loginpage.dart';
import 'package:food_app/screen/sign_up.dart';
import 'package:food_app/screen/wellcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "flutter demo",
      theme: ThemeData(),
      home: SignUp(),
    );
  }
}
