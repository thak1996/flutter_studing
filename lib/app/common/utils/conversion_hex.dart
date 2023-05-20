import 'package:flutter/material.dart';

/// Converte cores Hexadecimais para Color.
class HexColor extends Color {
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));

  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    final hexNum = int.parse(hexColor, radix: 16);
    if (hexNum == 0) {
      return 0xff000000;
    }
    return hexNum;
  }
}