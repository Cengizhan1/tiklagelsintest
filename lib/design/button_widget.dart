import 'package:flutter/material.dart';
import 'package:test1/design/constants.dart';

class CustomButton extends StatelessWidget {
  final Text text;
  final double height;
  final double width;
  final Color backGroundColor;
  final Function onPressed;
  final Icon icon;
  const CustomButton({
    Key? key,
    required this.icon,
    required this.text,
    required this.onPressed,
    this.backGroundColor = COLOR_RED_BUTTON,
    this.height = 54,
    required this.width,
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
      child: MaterialButton(
        onPressed: () {
          return onPressed();
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            SizedBox(
              width: 15,
            ),
            text
          ],
        ),
      ),
    );
  }
}
