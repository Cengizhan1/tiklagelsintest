import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomButton3 extends StatelessWidget {
  final double height;
  final double width;
  final Color backGroundcolor;
  final Function onPressed;
  final FaIcon icon;
  const CustomButton3({
    Key? key,
    required this.icon,
    required this.onPressed,
    required this.backGroundcolor,
    required this.height,
    required this.width,
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
            icon,
          ],
        ),
      ),
    );
  }
}
