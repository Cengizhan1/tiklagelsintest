import 'package:flutter/material.dart';

class AdressWidget extends StatelessWidget {
  final Icon icon1;
  final Icon icon2;
  final Text text;
  final double sizedBoxWidth1;
  final double sizedBoxWidth2;
  const AdressWidget(
      {Key? key,
      this.sizedBoxWidth1 = 12.4,
      this.sizedBoxWidth2 = 12.4,
      required this.icon1,
      required this.icon2,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon1,
        SizedBox(
          width: sizedBoxWidth1,
        ),
        Container(
            width: 291,
            height: 28,
            alignment: Alignment.centerLeft,
            child: text),
        SizedBox(
          width: sizedBoxWidth2,
        ),
        icon2
      ],
    );
  }
}
