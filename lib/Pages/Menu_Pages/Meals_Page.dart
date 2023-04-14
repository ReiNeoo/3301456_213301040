import 'package:flutter/material.dart';
import 'package:yiyoruz_project/Widgets/Main_Menu_Widgets.dart';
import '../../Product/Project_Texts.dart';
import 'Diner_page.dart';

class Meals extends StatefulWidget {
  const Meals({super.key});

  @override
  State<Meals> createState() => _MealsState();
}

class _MealsState extends State<Meals> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(PageAppBarTitle.MealsTitle),),
      body: ListView.builder(itemBuilder: (context, index) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            SizedBox(
              height: 300,
              child: ImageListTile(
                subtitle: MainMenuText.LokantaName, 
                imageTitle: "assets/Ali_Nazik.png", 
                Direction: DinerPage(), 
                width: 200),
            ),
            SizedBox(
              height: 300,
              child: ImageListTile(
                subtitle: MainMenuText.LokantaName, 
                imageTitle: "assets/Ali_Nazik.png", 
                Direction: DinerPage(), 
                width: 200),
            ),
          ],
        );
      },),
    );
  }
}