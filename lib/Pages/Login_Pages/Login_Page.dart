import 'package:flutter/material.dart';
import 'package:yiyoruz_project/Pages/Menu_Pages/Main_Menu.dart';
import 'package:yiyoruz_project/Pages/Login_Pages/Sign_Up_Page.dart';
import 'package:yiyoruz_project/Product/Color_Palette.dart';
import 'package:yiyoruz_project/Widgets/eMailField.dart';
import 'package:yiyoruz_project/Product/Project_Paddings.dart';
import 'package:yiyoruz_project/Product/Project_Texts.dart';
import 'package:yiyoruz_project/Product/Project_Text_Themes.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: LogInPagePaddings.LogInMainPadding,
        child: Column(
          children: [
            const Expanded(flex: 4, child: Center(child: Text("YİYORUZ logo"))),
            const Expanded(
              flex: 2,
              child: ListTile(
                title: Text(LogInPageText.LogInTitle,
                    style: LogInPageTextTheme.ListTileTitleTheme),
                subtitle: Text(LogInPageText.LogInSubtitle,
                    style: LogInPageTextTheme.ListTileSubitleTheme),
              ),
            ),
            const Expanded(flex: 1, child: eMailField()),
            const Expanded(flex: 1, child: PasswordField()),
            Expanded(
                child: Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MainMenu()));
                },
                child: const Text(LogInPageText.LogInTitle),
                style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    backgroundColor: ProjectColorPalette.ButtonCollor),
              ),
            )),
            Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignUpPage()));
                        },
                        child: const Text(
                          LogInPageText.SignUpText,
                          style: LogInPageTextTheme.SubButtonTheme,
                        )),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          LogInPageText.ForgotButtonText,
                          style: LogInPageTextTheme.SubButtonTheme,
                        ))
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
