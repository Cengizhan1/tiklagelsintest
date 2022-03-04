import 'package:flutter/material.dart';
import 'package:test1/ui/widgets/adress_widget.dart';
import 'package:test1/ui/widgets/text_widget.dart';

import '../../assets/myicons.dart';
import '../../constants/colors.dart';
import '../widgets/button_widget_basket.dart';
import '../widgets/radiobutton_widget.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

late int selectedValue = 1;

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
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
      body: SingleChildScrollView(
        child: Padding(
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
                color: COLOR_GREY_BUTTON,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, top: 0, right: 15),
                  child: TextFormField(
                    minLines: 5,
                    maxLines: 5,
                    autofocus: false,
                    decoration: const InputDecoration.collapsed(
                        hintText: "*Message",
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: COLOR_HINT_TEXT,
                            fontSize: 12)),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const TextWidget(text: "Payment Method"),
              Column(
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
                      "Pay with PayPall",
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
              const SizedBox(
                height: 30,
              ),
              const TextWidget(text: "Payment Summary"),
              const SizedBox(
                height: 15,
              ),
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
              const SizedBox(
                height: 30,
              ),
              Container(
                width: 345,
                color: COLOR_GREY_BUTTON,
                padding: EdgeInsets.only(left: 15, right: 15, top: 12),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 6, top: 10),
                      child: Row(
                        children: const [
                          TextWidget(
                            width: 188,
                            text: "Product total",
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                          SizedBox(
                            width: 55,
                          ),
                          TextWidget(
                            text: "S120.54",
                            alignment: TextAlign.end,
                            width: 72,
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      child: Divider(
                        height: 1,
                        color: COLOR_DIVIDER,
                        thickness: 2,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 6, top: 10),
                      child: Row(
                        children: const [
                          TextWidget(
                            width: 188,
                            text: "Delivery Fee",
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                          SizedBox(
                            width: 55,
                          ),
                          TextWidget(
                            text: "          S0",
                            alignment: TextAlign.end,
                            width: 72,
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      child: Divider(
                        height: 1,
                        color: COLOR_DIVIDER,
                        thickness: 2,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 6, top: 10),
                      child: Row(
                        children: const [
                          TextWidget(
                            width: 188,
                            text: "Total",
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                          SizedBox(
                            width: 55,
                          ),
                          TextWidget(
                            text: "S120.54",
                            alignment: TextAlign.end,
                            width: 72,
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 21,
              ),
              CustomButtonBasket(
                  icon: const Icon(
                    MyIcons.basket,
                    color: Colors.white,
                    size: 25,
                  ),
                  text: Text(
                    "Go the Basket",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: COLOR_WHITE),
                  ),
                  onPressed: () {},
                  text2: Text(
                    "S 4.00",
                    textAlign: TextAlign.end,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: COLOR_WHITE),
                  )),
              SizedBox(
                height: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}
