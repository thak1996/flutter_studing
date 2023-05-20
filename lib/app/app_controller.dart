import 'package:flutter/widgets.dart';

class AppController extends ChangeNotifier {
  bool isDarkMode = false;

  onStateChanged() {
    isDarkMode = !isDarkMode;
    notifyListeners();
  }
}
