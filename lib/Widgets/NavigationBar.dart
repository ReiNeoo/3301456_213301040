import 'package:flutter/material.dart';
import 'package:yiyoruz_project/Pages/Side_Pages/LikesPage.dart';
import 'package:yiyoruz_project/Pages/Side_Pages/MapPage.dart';

import '../Pages/Menu_Pages/Main_Menu.dart';
import '../Pages/Side_Pages/Profile.dart';
import '../Product/Color_Palette.dart';

class ProjectNavigationBar extends StatefulWidget {
  const ProjectNavigationBar({
    super.key,
  });

  @override
  State<ProjectNavigationBar> createState() => _ProjectNavigationBarState();
}

class _ProjectNavigationBarState extends State<ProjectNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(onTap: (value) {
      if (value == 0) {
        setState(() {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MainMenu()));
        });
      } else if (value == 1) {
        setState(() {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MapPage()));
        });
      } else {
        setState(() {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => LikesPage()));
        });
      }

    }, items: const [
      BottomNavigationBarItem(
        icon: Icon(Icons.home,color: ProjectColorPalette.ButtonCollor),
        label: "Ana Menü",
        ),
      BottomNavigationBarItem(
        icon: Icon(Icons.map, color: ProjectColorPalette.ButtonCollor,), 
        label: "Haritalar",
        ),
      BottomNavigationBarItem(
        icon: Icon(Icons.star, color: ProjectColorPalette.ButtonCollor,), 
        label: "Beğenilenler"
        )
    ],
    selectedItemColor: Colors.red,
    );
  }
}