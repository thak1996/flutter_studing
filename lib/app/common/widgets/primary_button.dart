import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../constants/app_text_styles.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    this.onPressed,
    this.padding,
    required this.text,
  }) : super(key: key);

  final VoidCallback? onPressed;
  final String text;
  final EdgeInsetsGeometry? padding;

  final BorderRadius _borderRadius = const BorderRadius.all(
    Radius.circular(24.0),
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ??
          const EdgeInsets.only(top: 10, right: 40, left: 40, bottom: 10),
      child: Ink(
        height: 48.0,
        decoration: BoxDecoration(
          borderRadius: _borderRadius,
          color: onPressed != null
              ? AppColors.purpleMedium
              : AppColors.purpleStrong,
        ),
        child: InkWell(
          borderRadius: _borderRadius,
          onTap: onPressed,
          child: Align(
            child: Text(
              text,
              style: AppTextStyles.mediumText18.copyWith(
                color: AppColors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
