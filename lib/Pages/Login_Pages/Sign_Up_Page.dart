import 'package:flutter/material.dart';
import 'package:yiyoruz_project/Pages/Login_Pages/Login_Page.dart';
import 'package:yiyoruz_project/Pages/Menu_Pages/Main_Menu.dart';
import 'package:yiyoruz_project/Product/Color_Palette.dart';
import 'package:yiyoruz_project/Product/Project_Paddings.dart';
import 'package:yiyoruz_project/Product/Project_Text_Themes.dart';
import 'package:yiyoruz_project/Product/Project_Texts.dart';
import 'package:yiyoruz_project/Widgets/eMailField.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: LogInPagePaddings.LogInMainPadding,
        child: Column(
          children: [
            const Expanded(
                flex: 4, child: Center(child: Text("YİYORUZ yazan logo"))),
            const Expanded(
                flex: 2,
                child: ListTile(
                  leading: Icon(Icons.add_box_outlined),
                  title: Text(
                    SignUpPageText.SignUpTitle,
                    style: LogInPageTextTheme.ListTileTitleTheme,
                  ),
                  subtitle: Text(
                    SignUpPageText.SignUpSubtitle,
                    style: LogInPageTextTheme.ListTileSubitleTheme,
                  ),
                )),
            const Expanded(child: eMailField()),
            const Expanded(child: PasswordField()),
            Expanded(
                child: Center(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MainMenu()));
                  },
                  child: const Text(SignUpPageText.SignUpTitle),
                  style: ElevatedButton.styleFrom(shape: StadiumBorder(), backgroundColor: ProjectColorPalette.ButtonCollor)
                  ),
            )),
            Expanded(
                child: TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LogInPage()));
              },
              child: Text(
                SignUpPageText.LogIn,
                style: LogInPageTextTheme.SubButtonTheme,
              ),
            ))
          ],
        ),
      ),
    );
  }
}
