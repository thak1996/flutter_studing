import 'package:day_night_switcher/day_night_switcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_studing/app/app_controller.dart';

class CustomSwitch extends StatelessWidget {
  const CustomSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    final AppController controller = Modular.get<AppController>();

    return DayNightSwitcherIcon(
      isDarkModeEnabled: controller.isDarkMode,
      onStateChanged: (isDarkModeEnabled) {
        controller.onStateChanged();
      },
    );
  }
}
