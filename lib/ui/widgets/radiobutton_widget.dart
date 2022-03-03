import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/myicons.dart';

class RadioButtonDesign extends StatefulWidget {
  final Text option1;
  final Text option2;
  final int selectedValue;
  final Text option3;
  final Function onChanged;

  const RadioButtonDesign(
      {Key? key,
      required this.option1,
      required this.option2,
      required this.option3,
      required this.onChanged,
      required this.selectedValue})
      : super(key: key);

  @override
  State<RadioButtonDesign> createState() => _RadioButtonDesignState();
}

class _RadioButtonDesignState extends State<RadioButtonDesign> {
  late int selectedValue;

  @override
  void initState() {
    super.initState();
    selectedValue = 0;
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.only(top: 15),
      color: COLOR_GREY_BUTTON,
      width: size.width,
      child: Column(children: <Widget>[
        Row(
          children: [
            Radio<int>(
              value: 0,
              activeColor: COLOR_RED_BUTTON,
              groupValue: selectedValue,
              onChanged: (int? value) {
                // widget.onChanged;
                setState(() {
                  selectedValue = value!;
                });
              },
            ),
            widget.option1,
          ],
        ),
        const SizedBox(
          child: Divider(
            height: 1,
            color: COLOR_DIVIDER,
            thickness: 2,
          ),
        ),
        Row(
          children: [
            Radio<int>(
              value: 1,
              activeColor: COLOR_RED_BUTTON,
              groupValue: selectedValue,
              onChanged: (int? value) {
                //widget.onChanged;
                setState(() {
                  selectedValue = value!;
                });
              },
            ),
            widget.option2,
          ],
        ),
        const SizedBox(
          child: Divider(
            height: 1,
            color: COLOR_DIVIDER,
            thickness: 2,
          ),
        ),
        Row(
          children: [
            Radio<int>(
              value: 2,
              activeColor: COLOR_RED_BUTTON,
              groupValue: selectedValue,
              onChanged: (int? value) {
                // widget.onChanged;
                setState(() {
                  selectedValue = value!;
                });
              },
            ),
            Icon(
              MyIcons.paypall,
              size: 15,
              color: COLOR_TEXT_BLUE,
            ),
            SizedBox(
              width: 7,
            ),
            widget.option3,
          ],
        ),
      ]),
    );
  }
}
