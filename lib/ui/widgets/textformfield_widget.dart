import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class CustomTextFormField extends StatelessWidget {
  final Widget child;
  final double height;
  final double width;
  final Color backGroundColor;
  const CustomTextFormField({
    Key? key,
    this.backGroundColor = COLOR_TEXTFORM,
    this.height = 54,
    required this.width,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          color: backGroundColor,
        ),
        height: height,
        width: width,
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: child,
        ));
  }
}
