import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../constants/colors.dart';

class CustomButton2 extends StatelessWidget {
  final Text? text;
  final FaIcon? icon;
  final double height;
  final double width;
  final Color backGroundcolor;
  final Function onPressed;
  const CustomButton2({
    Key? key,
    this.text,
    required this.onPressed,
    this.backGroundcolor = COLOR_RED_BUTTON,
    this.height = 54,
    required this.width,
    this.icon,
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
      child: MaterialButton(
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            text != null ? text! : Container(),
            icon != null ? icon! : Container()
          ],
        ),
      ),
    );
  }
}
