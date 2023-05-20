import 'package:flutter/material.dart';
import 'package:flutter_web/app/common/utils/conversion_hex.dart';

class AppColors {
  AppColors._();

  static const MaterialColor babyBlue = MaterialColor(
    0xFF89CFF0,
    <int, Color>{
      50: Color(0xFFE1F4FB),
      100: Color(0xFFB5E5F6),
      200: Color(0xFF89CFF0),
      300: Color(0xFF5DB8EA),
      400: Color(0xFF3DA2E5),
      500: Color(0xFF198BDF),
      600: Color(0xFF177DC9),
      700: Color(0xFF146EAF),
      800: Color(0xFF116096),
      900: Color(0xFF0E4F7D),
    },
  );

  static Color darkGrey = HexColor("#444444");
  static Color error = HexColor("#F44336");
  static Color grey = HexColor("#666666");
  static Color iceWhite = HexColor("#EEF8F7");
  static Color lighGrey = HexColor("#BFBFBF");
  static Color pinkLogo = HexColor("#FC0FC0");
  static Color pinkOne = HexColor('#E05799');
  static List<Color> pinkThreGradient = [
    HexColor("#FFFFFF"),
    HexColor("#FDE4ED"),
    HexColor("#F9C9DC"),
    HexColor("#F5AECB"),
    HexColor("#EF93BA"),
    HexColor("#E876A9"),
    HexColor("#E05799"),
  ];

  static Color white = HexColor("#FFFFFF");
}
