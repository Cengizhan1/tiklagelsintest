import 'package:flutter/material.dart';
import 'package:test1/design/button_widget.dart';
import 'package:test1/design/text_widget.dart';
import 'package:test1/page/payment_page.dart';

import '../design/constants.dart';
import '../design/textformfield_widget.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextWidget(text: "Let's get to \nknow you better"),
            SizedBox(
              height: 25,
            ),
            CustomTextFormField(
              width: size.width,
              backGroundcolor: COLOR_TEXTFORM,
              height: 60,
              child: TextFormField(
                style: TextStyle(color: Colors.black),
                decoration: const InputDecoration(
                  hintText: "Name",
                  prefixText: " ",
                  hintStyle: TextStyle(color: Colors.grey),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            CustomTextFormField(
              width: size.width,
              backGroundcolor: COLOR_TEXTFORM,
              height: 60,
              child: TextFormField(
                style: TextStyle(color: Colors.black),
                decoration: const InputDecoration(
                  hintText: "Surname",
                  prefixText: " ",
                  hintStyle: TextStyle(color: Colors.grey),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            CustomTextFormField(
              width: size.width,
              backGroundcolor: COLOR_TEXTFORM,
              height: 60,
              child: TextFormField(
                style: TextStyle(color: Colors.black),
                decoration: const InputDecoration(
                  hintText: "E-mail",
                  prefixText: " ",
                  hintStyle: TextStyle(color: Colors.grey),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
                icon: const Icon(
                  MyIcons.vector1,
                  color: COLOR_WHITE,
                  size: 19,
                ),
                text: Text(
                  "Discover Products",
                  style: TextStyle(color: COLOR_WHITE, fontSize: 19),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Payment()));
                },
                backGroundColor: COLOR_RED_BUTTON,
                width: size.width),
            SizedBox(
              height: 20,
            ),
            CustomButton(
                width: size.width - 50,
                icon: const Icon(
                  Icons.refresh,
                  size: 18,
                  color: COLOR_WHITE,
                ),
                text: const Text(
                  "Next Screen",
                  style: TextStyle(fontSize: 18, color: COLOR_WHITE),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Payment()));
                }),
          ],
        ),
      ),
    );
  }
}
