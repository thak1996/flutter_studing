import 'package:flutter/material.dart';
import 'package:flutter_web/app/common/utils/conversion_hex.dart';

class AppColors {
  AppColors._();

  static Color white = HexColor("#FFFFFF");
  static Color purpleWeak = HexColor("#D3BFF9");
  static Color purpleMedium = HexColor("#925FF0");
  static Color purpleStrong = HexColor("#");
  static Color error = HexColor("#F44336");
  static Color grey = HexColor("#666666");
  static Color lighGrey = HexColor("#BFBFBF");
  static Color iceWhite = HexColor("#EEF8F7");
  static List<Color> purpleGradient = [
    HexColor("#FFFFFF"),
    HexColor("#F4EFFE"),
    HexColor("#E9DFFC"),
    HexColor("#DECFFB"),
    HexColor("#D3BFF9"),
    HexColor("#BE9FF6"),
    HexColor("#A87FF3"),
  ];

}
