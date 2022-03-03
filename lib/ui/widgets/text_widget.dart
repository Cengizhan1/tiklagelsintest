import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final double fontSize;
  final TextAlign alignment;
  final double width;
  final FontWeight fontWeight;

  const TextWidget(
      {Key? key,
      required this.text,
      this.fontSize = 28,
      this.fontWeight = FontWeight.w400,
      this.width = 0,
      this.alignment = TextAlign.left})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(bottom: 15),
      width: width == 0 ? size.width : width,
      child: Text(text,
          textAlign: alignment,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: fontWeight,
          )),
    );
  }
}
