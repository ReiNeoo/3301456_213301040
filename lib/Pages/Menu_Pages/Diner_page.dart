import 'package:flutter/material.dart';
import 'package:yiyoruz_project/Product/Project_Text_Themes.dart';
import 'package:yiyoruz_project/Product/Project_Texts.dart';
import 'package:yiyoruz_project/Widgets/InfoStack.dart';
import 'package:yiyoruz_project/Widgets/NavigationBar.dart';

class DinerPage extends StatefulWidget {
  const DinerPage({super.key});

  @override
  State<DinerPage> createState() => _DinerPageState();
}

class _DinerPageState extends State<DinerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Anadolu Tat 1071"),),
      body: ListView(
        children: const [
          Image(image: AssetImage("assets/Lokanta_1.png"), fit: BoxFit.fill),
          Divider(),
          ListTile(
            title: Text(
              DinerPageText.LokantaName,
              style: LogInPageTextTheme.ListTileTitleTheme),
            subtitle: Text(
              DinerPageText.subtitle,
              style: LogInPageTextTheme.ListTileSubitleTheme,),
          ),
          Divider(),
          ProjectInfoWidget(Title: "Tanıtım", InfoText: DinerPageText.InfoText),
          Divider(),
          ProjectInfoWidget(Title: "Menü", InfoText: DinerPageText.MenuText)

        ],
      ),
      bottomNavigationBar: ProjectNavigationBar(),
    );
  }
}