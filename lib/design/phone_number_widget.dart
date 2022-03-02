import 'package:flutter/material.dart';
import 'package:test1/design/constants.dart';

class CustomButtonPhone extends StatelessWidget {
  final double height;
  final double width;
  final Color color;
  const CustomButtonPhone({
    Key? key,
    required this.height,
    required this.width,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var dropdownvalue = "+90";
    var items = ['+90', '+213', '+903', '+1'];
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          alignment: Alignment.centerRight,
          child: DropdownButton(
            value: dropdownvalue,
            style: TextStyle(color: COLOR_WHITE, fontSize: 18),
            alignment: Alignment.centerRight,
            icon: const Icon(Icons.keyboard_arrow_down),
            items: items.map((String items) {
              return DropdownMenuItem(
                value: items,
                child: Text(items),
              );
            }).toList(),
            onChanged: (String? newValue) {
              dropdownvalue = newValue!;
              print("asda" + dropdownvalue);
            },
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(13),
            color: color,
          ),
          height: height,
          width: width,
        ),
        SizedBox(
          width: 8,
        ),
        Container(
          padding: EdgeInsets.only(left: 9),
          alignment: Alignment.centerLeft,
          child: TextFormField(
            decoration: const InputDecoration(
                hintText: "Phone Number",
                hintStyle: TextStyle(color: COLOR_BACKGROUND, fontSize: 18)),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(13),
            color: color,
          ),
          height: height,
          width: width * 4,
        ),
      ],
    );
  }
}
