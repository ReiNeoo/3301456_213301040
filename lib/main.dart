import "package:flutter/material.dart";
import 'package:yiyoruz_project/Pages/Login_Pages/Remember_password.dart';
import 'package:yiyoruz_project/Pages/Login_Pages/Login_Page.dart';
import 'package:yiyoruz_project/Pages/Login_Pages/Sign_Up_Page.dart';
import 'package:yiyoruz_project/Pages/Greeting_Pages/Greetings_View.dart';
import 'package:yiyoruz_project/Pages/Greeting_Pages/Welcome_Page_2.dart';
import 'package:yiyoruz_project/Pages/Greeting_Pages/Welcome_Page_3.dart';
import 'Pages/Greeting_Pages/Welcome_Page_1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.light().copyWith(
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 46, 46, 45)
        ),
      ),
      home: RememberPasswordView(),
    );
  }
}