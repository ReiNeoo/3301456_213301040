import 'package:flutter/material.dart';
import 'package:yiyoruz_project/Pages/Login_Pages/Login_Page.dart';
import 'package:yiyoruz_project/Pages/Menu_Pages/Main_Menu.dart';
import 'package:yiyoruz_project/Product/Project_Paddings.dart';
import 'package:yiyoruz_project/Product/Project_Texts.dart';
import 'package:yiyoruz_project/Widgets/InfoContainer.dart';

class WelcomePageThree extends StatefulWidget {
  const WelcomePageThree({super.key});

  @override
  State<WelcomePageThree> createState() => _WelcomePageThreeState();
}

class _WelcomePageThreeState extends State<WelcomePageThree> {
  final String WelcomePageFoodThree = "assets/WelcomePageFoodThree.png";
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: WelcomPagePaddings.WelcomePagesBasePadding,
        child: Column(
          children: [
            Spacer(flex: 1,),
            Expanded(flex: 5, child: Image.asset(WelcomePageFoodThree)),
            Spacer(flex: 1,),
            Expanded(flex: 2, child: Center(child: InfoContainer(informationText: WelcomePageText.WelcomePageThreePromoText))),
            Expanded(flex: 1, child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.arrow_left_outlined),
                ElevatedButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LogInPage())); 
                }, child: Text(WelcomePageText.WelcomePageThreeButtonText))
              ],
            ))
          ],
        ),
      ),
    );
  }
}