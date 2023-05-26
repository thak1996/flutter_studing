
import 'package:flutter/material.dart';
import 'package:flutter_studing/app/common/constants/app_colors.dart';
import 'package:flutter_studing/app/common/constants/app_text_styles.dart';


class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    Key? key,
    required this.onPressed, required this.text,
  }) : super(key: key);

  final VoidCallback onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.all(Colors.transparent),
      ),
      onPressed: onPressed,
      child: Text(
        style: AppTextStyles.mediumText16.apply(color: AppColors.purpleMedium),
        maxLines: 1,
        text,
      ),
    );
  }
}
