import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../constants/colors.dart';

class CustomButton4 extends StatelessWidget {
  final double height;
  final double width;
  final Text text;
  const CustomButton4({
    Key? key,
    this.height = 54,
    required this.width,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.black,
      ),
      height: height,
      width: width,
      child: Container(
        color: COLOR_GREY_BUTTON,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {},
                icon: const FaIcon(
                  FontAwesomeIcons.minus,
                  size: 18,
                  color: COLOR_BLACK_BUTTON,
                )),
            const SizedBox(
              width: 5,
            ),
            text,
            const SizedBox(
              width: 5,
            ),
            IconButton(
                onPressed: () {},
                icon: const FaIcon(
                  FontAwesomeIcons.plus,
                  size: 18,
                  color: COLOR_BLACK_BUTTON,
                )),
          ],
        ),
      ),
    );
  }
}
