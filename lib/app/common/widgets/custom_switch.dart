import 'package:day_night_switcher/day_night_switcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web/app/app_controller.dart';

class CustomSwitch extends StatelessWidget {
  const CustomSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return DayNightSwitcherIcon(
      isDarkModeEnabled: AppController.instance.isDarkMode,
      onStateChanged: (isDarkModeEnabled) {
        AppController.instance.onStateChanged();
      },
    );
  }
}
