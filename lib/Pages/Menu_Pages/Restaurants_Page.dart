import 'package:flutter/material.dart';
import 'package:yiyoruz_project/Pages/Menu_Pages/Diner_page.dart';
import '../../Product/Project_Texts.dart';
import '../../Widgets/Main_Menu_Widgets.dart';

class Restaurants extends StatefulWidget {
  const Restaurants({super.key});

  @override
  State<Restaurants> createState() => _RestaurantsState();
}

class _RestaurantsState extends State<Restaurants> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(PageAppBarTitle.RestaurantsTitle),),
      body: ListView.builder(itemBuilder: (context, index) {
        return const SizedBox(
          height: 300,
          child: ImageListTile(
            subtitle: MainMenuText.LokantaName, 
            imageTitle: "assets/Lokanta_1.png", 
            Direction: DinerPage(), 
            width: 400),
        );
      },),
    );
  }
}