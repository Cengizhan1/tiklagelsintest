import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:test1/ui/page/product_page.dart';
import 'package:test1/ui/widgets/button_widget.dart';

import 'constants/colors.dart';
import 'constants/myicons.dart';
import 'ui/widgets/button_widget_iconortext.dart';
import 'ui/widgets/button_widget_icontexticon.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final ThemeData themeData = Theme.of(context);
    return Scaffold(
      backgroundColor: COLOR_WHITE,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton2(
                width: size.width - 300,
                backGroundcolor: COLOR_RED_BUTTON,
                text: const Text(
                  "Apply",
                  style: TextStyle(fontSize: 18, color: COLOR_WHITE),
                ),
                onPressed: () {}),
            const SizedBox(
              height: 20,
            ),
            CustomButton2(
                height: 54,
                width: size.width - 320,
                backGroundcolor: COLOR_RED_BUTTON,
                icon: const FaIcon(
                  FontAwesomeIcons.plus,
                  size: 18,
                  color: COLOR_WHITE,
                ),
                onPressed: () {}),
            const SizedBox(
              height: 20,
            ),
            const CustomButton4(
              width: 130,
              height: 40,
              text: Text(
                "15",
                style: TextStyle(color: COLOR_RED_BUTTON, fontSize: 18),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
                width: size.width - 50,
                backGroundColor: COLOR_GREY_BUTTON,
                text: const Text(
                  "Try Again",
                  style: TextStyle(fontSize: 18, color: COLOR_BLACK),
                ),
                icon: const Icon(
                  MyIcons.vector1,
                  size: 18,
                ),
                onPressed: () {}),
            SizedBox(
              height: 20,
            ),
            CustomButton(
                width: size.width - 50,
                backGroundColor: Colors.white,
                icon: const Icon(
                  MyIcons.vector,
                  size: 18,
                ),
                text: const Text(
                  "Go to App",
                  style: TextStyle(fontSize: 18, color: COLOR_BLACK),
                ),
                onPressed: () {}),
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
                  Get.to(ProductPage());
                }),
          ],
        ),
      ),
    );
  }
}
