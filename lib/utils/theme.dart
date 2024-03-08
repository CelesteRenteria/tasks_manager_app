import 'package:flutter/material.dart';

final ThemeData firstTheme = ThemeData.light().copyWith(
primaryColor: ColorsApp.primary,
cardColor: ColorsApp.primary,
shadowColor: ColorsApp.disable,
disabledColor: ColorsApp.disable,
secondaryHeaderColor: ColorsApp.secondary,
canvasColor: ColorsApp.neutral,
checkboxTheme: CheckboxThemeData(
  fillColor: MaterialStatePropertyAll(ColorsApp.primary),
  checkColor: MaterialStatePropertyAll(ColorsApp.neutral)
),
filledButtonTheme: const FilledButtonThemeData(),
// errorColor: ColorsApp.red,
appBarTheme:  AppBarTheme(
backgroundColor: ColorsApp.primary
),
scaffoldBackgroundColor: ColorsApp.black
);

class ColorsApp{
  static Color secondary = const Color(0xFF8338ec);
  static Color primary = const Color(0xFF5F7BF6);
  static Color black = const Color(0xFF353535);
  static Color neutral = Colors.white;
  static Color red = const Color.fromARGB(255, 224, 122, 95);
  static Color disable = const Color(0xFFD9D9D9);
  
  
  }

