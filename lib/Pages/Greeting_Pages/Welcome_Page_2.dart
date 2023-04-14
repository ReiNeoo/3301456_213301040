import 'package:flutter/material.dart';
import 'package:yiyoruz_project/Product/Project_Paddings.dart';
import 'package:yiyoruz_project/Product/Project_Texts.dart';
import 'package:yiyoruz_project/Widgets/InfoContainer.dart';

class WelcomePageTwo extends StatelessWidget {
  const WelcomePageTwo({super.key});
  final String _FoodImage = "assets/WelcomePageFoodOne.png";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: WelcomPagePaddings.WelcomePagesBasePadding,
        child: Column(
          children: [
            const Spacer(flex: 1),
            Expanded(flex: 5, child: Image.asset(_FoodImage)),
            const Spacer(flex: 1,),
            Expanded(flex: 2, child: Center(child: InfoContainer(informationText:WelcomePageText.WelcomePageTwoPromoText,))),
            Expanded(child: Row( 
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Icon(Icons.arrow_left_outlined), Icon(Icons.arrow_right_outlined)],))
          ],
        ),
      ),
    );
  }
}

