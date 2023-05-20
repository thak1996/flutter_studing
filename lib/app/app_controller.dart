import 'package:flutter/widgets.dart';

class AppController extends ChangeNotifier {
  static AppController instance = AppController();
  bool isDarkMode = false;

  onStateChanged() {
    isDarkMode = !isDarkMode;
    notifyListeners();
  }
}
