import 'package:flutter/material.dart';
import 'package:flutter_web/app/common/constants/app_colors.dart';
import 'package:flutter_web/app/common/constants/app_text_styles.dart';
import 'package:flutter_web/app/common/widgets/top_eclips.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const TopEclips(),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Estudando Flutter + Firebase',
                  style: AppTextStyles.mediumText20.apply(
                    color: AppColors.purpleMedium,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
