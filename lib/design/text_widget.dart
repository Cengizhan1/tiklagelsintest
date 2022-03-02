import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String text;
  const TextWidget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(bottom: 15),
      width: size.width,
      child: Text(
        text,
        textAlign: TextAlign.left,
        style: TextStyle(fontSize: 28, fontWeight: FontWeight.w400),
      ),
    );
  }
}
