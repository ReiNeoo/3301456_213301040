import 'package:flutter/material.dart';
import 'package:yiyoruz_project/Product/Color_Palette.dart';

class TitleFontSizes {
  static const double LargeTitle = 48;
  static const double MediumTitle = 18;
}

class LogInPageTextTheme {
  static const TextStyle SubButtonTheme = TextStyle(color: ProjectColorPalette.ButtonCollor, fontSize: 12); 
  static const TextStyle ListTileTitleTheme = TextStyle(color: ProjectColorPalette.TitleCollor,fontSize: TitleFontSizes.LargeTitle, fontWeight: FontWeight.bold);
  static const TextStyle ListTileSubitleTheme = TextStyle(color: ProjectColorPalette.SubtitleCollor,fontSize: TitleFontSizes.MediumTitle, fontStyle: FontStyle.italic);
}