import 'package:flutter/material.dart';
import 'package:test1/design/adress_widget.dart';
import 'package:test1/design/constants.dart';
import 'package:test1/design/text_widget.dart';

import '../design/radiobutton_widget.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

late int selectedValue = 1;

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: COLOR_BLACK),
        centerTitle: true,
        backgroundColor: COLOR_WHITE,
        title: Container(
          alignment: Alignment.center,
          height: 54,
          width: 163,
          child: const Text(
            "Payment",
            style: TextStyle(color: COLOR_BLACK),
          ),
        ),
      ),
      backgroundColor: COLOR_WHITE,
      body: Padding(
        padding: const EdgeInsets.only(left: 15, top: 15, right: 15),
        child: Column(
          children: [
            const TextWidget(text: "Address"),
            const AdressWidget(
              icon1: Icon(
                MyIcons.address,
                size: 15,
              ),
              icon2: Icon(
                MyIcons.vector1,
                size: 10,
              ),
              text: Text(
                "Cevizli, Tugay yolu Cd. Nuvo Dragos Maltepe/\nİstanbul",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            const TextWidget(text: "Add Note"),
            Container(
              color: COLOR_TEXTFORM,
              child: Padding(
                padding: const EdgeInsets.only(left: 15, top: 0, right: 15),
                child: TextFormField(
                  minLines: 5,
                  maxLines: 5,
                  autofocus: false,
                  decoration: const InputDecoration(
                      hintText: "*Message",
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: COLOR_HINT_TEXT,
                          fontSize: 12)),
                ),
              ),
            ),
            const TextWidget(text: "Payment Method"),
            Container(
              padding: const EdgeInsets.only(top: 15),
              color: COLOR_GREY_BUTTON,
              width: size.width,
              child: Column(
                children: <Widget>[
                  RadioButtonDesign(
                    selectedValue: selectedValue,
                    option2: const Text(
                      "Card on Delivery",
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 12),
                    ),
                    option1: const Text(
                      "Cash on Delivery",
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 12),
                    ),
                    option3: const Text(
                      "Pay with paypall",
                      style: TextStyle(
                          color: COLOR_TEXT_BLUE,
                          fontWeight: FontWeight.w700,
                          fontSize: 12),
                    ),
                    onChanged: (int selectionValue) {
                      setState(() {
                        selectedValue = selectionValue;
                      });
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const TextWidget(text: "Payment Summary"),
            const AdressWidget(
              icon1: Icon(
                MyIcons.gift,
                size: 15,
              ),
              icon2: Icon(
                MyIcons.vector1,
                size: 10,
              ),
              text: Text(
                "Choose Campaign",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
