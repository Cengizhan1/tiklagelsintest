import 'package:flutter/material.dart';
import 'package:test1/design/constants.dart';

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
    print("valasd");

    return Column(children: <Widget>[
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
          widget.option3,
        ],
      ),
    ]);
  }
}
