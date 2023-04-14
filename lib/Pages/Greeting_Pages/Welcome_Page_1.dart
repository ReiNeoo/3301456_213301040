import 'package:flutter/material.dart';
import 'package:yiyoruz_project/Pages/Greeting_Pages/Welcome_Page_2.dart';
import 'package:yiyoruz_project/Product/Project_Paddings.dart';
import 'package:yiyoruz_project/Product/Project_Texts.dart';

class WelcomePageOne extends StatelessWidget {
  const WelcomePageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: WelcomPagePaddings.WelcomePagesBasePadding,
        child: Column(
          children: [
              Expanded(flex:5 ,child: Center(child: Text("YİYORUZ yazan logo", style: Theme.of(context).textTheme.headline4,))),
              const Spacer(flex: 1,),
              const Expanded(flex: 3, child: Center(child: Text(WelcomePageText.WelcomePageOneText, style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),))),
              Expanded(child: Row( 
              mainAxisAlignment: MainAxisAlignment.end,
              children: [IconButton(onPressed: () {
                Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => WelcomePageTwo()));
              },icon: Icon(Icons.arrow_right))],))
              ]
        ),
      )
    );
  }
}