import 'package:flutter/material.dart';
import 'package:yiyoruz_project/Pages/Menu_Pages/Diner_page.dart';
import 'package:yiyoruz_project/Pages/Login_Pages/Login_Page.dart';
import 'package:yiyoruz_project/Pages/Menu_Pages/Meal_Page.dart';
import 'package:yiyoruz_project/Pages/Menu_Pages/Meals_Page.dart';
import 'package:yiyoruz_project/Pages/Menu_Pages/Restaurants_Page.dart';
import 'package:yiyoruz_project/Pages/Side_Pages/Profile.dart';
import 'package:yiyoruz_project/Product/Color_Palette.dart';
import 'package:yiyoruz_project/Product/Project_Paddings.dart';
import 'package:yiyoruz_project/Product/Project_Texts.dart';
import 'package:yiyoruz_project/Widgets/Main_Menu_Widgets.dart';
import '../../Widgets/DrawerButton.dart';
import '../../Widgets/NavigationBar.dart';


class MainMenu extends StatefulWidget {
  const MainMenu({super.key});

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(MainMenuText.AppBarTitle),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            SizedBox(height: 300,child: Center(child: Image.asset("assets/Avatar.png",height: 200,)),),
            DrawerButton(infoText: "Tariflerim"),
            DrawerButton(infoText: "Ayarlar"),
            DrawerButton(infoText: "Bildirimler"),
            
            ],
        )),
      body: Padding(
        padding: MainMenuPaddings.MenuMainPadding,
        child: ListView(
          children: const [
            GreetingCard(
                ImageName: "assets/avatar.png", Direction: ProfilePage()),
            Divider(),
            MenuSearchField(),
            Divider(),
            NavigationTile(
                title: MainMenuText.DiningTitle, Direction: Restaurants()),
            SizedBox(
              height: 300,
              child: HorizontalListView(
                width: 400,
                Image: "assets/Lokanta_1.png",
                Text: MainMenuText.LokantaName,
                dire: DinerPage(),
              ),
            ),
            NavigationTile(
              title: MainMenuText.DinnerTitle,
              Direction: Meals(),
            ),
            SizedBox(
              height: 300,
              child: HorizontalListView(
                  width: 200,
                  Image: "assets/Ali_Nazik.png",
                  Text: "Ali Nazik",
                  dire: MealPage()),
            ),
            Divider()
          ],
        ),
      ),
      bottomNavigationBar: ProjectNavigationBar(),
    );
  }
}


