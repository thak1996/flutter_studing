import 'package:flutter/material.dart';
import 'package:flutter_web/app/common/widgets/custom_switch.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ModeSwith'),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: CustomSwitch(),
          ),
        ],
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(''),
          ],
        ),
      ),
    );
  }
}
