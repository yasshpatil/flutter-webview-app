
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThemeColor {
  static const Color primary = Color(0xffF29F05);
  static const Color black = Color(0xff222222);
  static const Color dark = Color(0xff231F20);
  static const Color mediumDark = Color(0xff606060);
  static const Color fade = Color(0xff808080);
  static const Color success = Color(0xff63CF81);
  static const Color alert = Color(0xffFF5C5C);
  static const Color warning = Color(0xffFFC727);
  static const Color white = Color(0xffFFFFFF);
  static const Color light = Color(0xffFAFAFA);

  final cupertinoTheme = const CupertinoThemeData(
    primaryColor: ThemeColor.white,
    barBackgroundColor: ThemeColor.white,
    scaffoldBackgroundColor: Colors.white,
  );
}
