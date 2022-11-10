import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_style.dart';

class AppColumnLayout extends StatelessWidget {
  final CrossAxisAlignment alignment;
  final String firstText;
  final String secondText;
  final bool isSetDefaultColor;

  const AppColumnLayout({
    Key? key,
    required this.alignment,
    required this.firstText,
    required this.secondText,
    this.isSetDefaultColor = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(firstText,
            style: isSetDefaultColor == true
                ? Styles.headLineStyle3.copyWith(color: Colors.white)
                : Styles.headLineStyle3),
        const Gap(5),
        Text(secondText,
            style: isSetDefaultColor == true
                ? Styles.headLineStyle4.copyWith(color: Colors.white)
                : Styles.headLineStyle4)
      ],
    );
  }
}
