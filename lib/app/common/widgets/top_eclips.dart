import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_web/app/common/utils/media_query.dart';

class TopEclips extends StatelessWidget {
  const TopEclips({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      child: SvgPicture.asset(
        "assets/images/eclips.svg",
        height: dsMediaQuery(context).height * 0.25,
      ),
    );
  }
}
