import 'package:flutter/material.dart';
import 'colors.dart' as color;

class MyTextStyle {
  static const TextStyle headline1 =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black);
  static const TextStyle headline3 =
      TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black);
  static const TextStyle bodyText1 =
      TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black);
  static const TextStyle bodyText2 =
      TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black);
  static TextStyle subTitle1 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: color.Colors.disableColor,
  );
  static TextStyle subTitle2 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: color.Colors.acccentColor,
  );
}
