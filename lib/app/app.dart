import 'package:flutter/material.dart';
import 'package:flutter_web/app/app_controller.dart';
import 'package:flutter_web/app/common/utils/default_theme.dart';
import 'package:flutter_web/app/view/home/home_page.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: ModeTheme.lightMode,
          darkTheme: ModeTheme.darkMode,
          themeMode: AppController.instance.isDarkMode
              ? ThemeMode.dark
              : ThemeMode.light,
          debugShowCheckedModeBanner: false,
          home: const HomePage(),
        );
      },
    );
  }
}
