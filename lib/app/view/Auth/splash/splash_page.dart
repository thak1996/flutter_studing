import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_web/app/common/constants/app_colors.dart';
import 'package:flutter_web/app/common/constants/app_text_styles.dart';
import 'package:flutter_web/app/common/widgets/custom_circular_progress_indicator.dart';
import 'package:flutter_web/app/common/widgets/top_eclips.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() async {
    Future.delayed(const Duration(seconds: 5));
    Modular.to.navigate('');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const TopEclips(),
          bodySplash(),
        ],
      ),
    );
  }

  Center bodySplash() {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Flutter Firebase', style: AppTextStyles.mediumText)
              .animate()
              .tint(color: AppColors.purpleMedium)
              .fade(delay: 10.milliseconds)
              .slideY(curve: Curves.easeIn)
              .then()
              .shake(),
          const SizedBox(height: 10),
          const CustomCircularProgressIndicator()
        ],
      ),
    );
  }
}
