import 'package:flutter/material.dart';

class ThickContainer extends StatelessWidget {
  final bool isSetDefaultColor;

  const ThickContainer({Key? key, this.isSetDefaultColor = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
            width: 2,
            color: isSetDefaultColor == true
                ? Colors.white
                : const Color(0xFF8ACCF7)),
      ),
    );
  }
}
