import 'package:flutter/material.dart';
import 'package:test1/design/constants.dart';

class CustomTextFormField extends StatelessWidget {
  final Widget child;
  final double height;
  final double width;
  final Color backGroundcolor;
  const CustomTextFormField({
    Key? key,
    this.backGroundcolor = COLOR_TEXTFORM,
    this.height = 54,
    required this.width,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          color: backGroundcolor,
        ),
        height: height,
        width: width,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: child,
        ));
  }
}
