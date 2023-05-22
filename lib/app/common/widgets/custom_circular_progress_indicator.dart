import 'package:flutter/material.dart';
import 'package:flutter_web/app/common/constants/app_colors.dart';


class CustomCircularProgressIndicator extends StatelessWidget {
  const CustomCircularProgressIndicator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: AppColors.purpleWeak,
      ),
    );
  }
}
