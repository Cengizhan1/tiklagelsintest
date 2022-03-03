import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class CustomButtonBasket extends StatelessWidget {
  final Text text;
  final Text text2;
  final double height;
  final double width;
  final Color backGroundColor;
  final Function onPressed;
  final Icon icon;
  const CustomButtonBasket({
    Key? key,
    required this.icon,
    required this.text,
    required this.onPressed,
    this.backGroundColor = COLOR_RED_BUTTON,
    this.height = 54,
    this.width = 345,
    required this.text2,
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
          children: [
            icon,
            SizedBox(
              width: 12.74,
            ),
            text,
            SizedBox(
              width: 100,
            ),
            text2
          ],
        ),
      ),
    );
  }
}
