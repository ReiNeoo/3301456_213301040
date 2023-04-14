import 'package:flutter/material.dart';

import '../../Product/Project_Text_Themes.dart';
import '../../Product/Project_Texts.dart';
import '../../Widgets/InfoStack.dart';

class MealPage extends StatefulWidget {
  const MealPage({super.key});

  @override
  State<MealPage> createState() => _MealPageState();
}

class _MealPageState extends State<MealPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ali Nazik"),),
      body: ListView(
        children: const [
          Image(
            image: AssetImage("assets/AliNazik_2.png"),
            fit: BoxFit.fill,
          ),
          Divider(),
          ListTile(
            title: Text(
              MalePageText.MaleName,
              style: LogInPageTextTheme.ListTileTitleTheme),    
          ),
          Divider(),
          ProjectInfoWidget(Title: "Malzemeler", InfoText: MalePageText.Malzemeler),
          Divider(),
          ProjectInfoWidget(Title: "Tarif", InfoText: MalePageText.Tarif)
        ],
      ),
    );
  }
}