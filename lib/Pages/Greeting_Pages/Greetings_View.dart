import 'package:flutter/material.dart';
import 'package:yiyoruz_project/Pages/Greeting_Pages/Welcome_Page_1.dart';
import 'package:yiyoruz_project/Pages/Greeting_Pages/Welcome_Page_2.dart';
import 'package:yiyoruz_project/Pages/Greeting_Pages/Welcome_Page_3.dart';


class GreetingWiev extends StatefulWidget {
  const GreetingWiev({super.key});

  @override
  State<GreetingWiev> createState() => _GreetingWievState();
}

class _GreetingWievState extends State<GreetingWiev> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          WelcomePageOne(),
          WelcomePageTwo(),
          WelcomePageThree()
        ],
      ),
    );
  }
}