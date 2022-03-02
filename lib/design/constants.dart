import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyIcons {
  MyIcons._();

  static const _kFontFam = 'MyIcons';
  static const String? _kFontPkg = null;

  static const IconData tryagain =
      IconData(0xe800, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData vector =
      IconData(0xe801, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData backarrow =
      IconData(0xe802, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData address =
      IconData(0xe803, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData vector1 =
      IconData(0xe804, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData gift =
      IconData(0xe805, fontFamily: _kFontFam, fontPackage: _kFontPkg);
}

const COLOR_BLACK = Color.fromRGBO(48, 47, 48, 1.0);
const COLOR_BLACK_BUTTON = Color.fromRGBO(0, 0, 0, 1);

const COLOR_RED_BUTTON = Color.fromRGBO(255, 5, 63, 1);

const COLOR_WHITE = Color.fromRGBO(255, 255, 255, 1);
const COLOR_GREY_BUTTON = Color.fromRGBO(243, 246, 250, 1);
const COLOR_HINT_TEXT = Color.fromRGBO(117, 122, 129, 1);
const COLOR_GREY = Color.fromRGBO(141, 141, 141, 1.0);
const COLOR_DARK_GREY = Color.fromRGBO(114, 112, 112, 1.0);

const COLOR_BACKGROUND = Color.fromRGBO(143, 147, 163, 1.0);
const COLOR_TEXTFORM = Color.fromRGBO(236, 240, 245, 1.0);

const COLOR_TEXT_BLUE = Color.fromRGBO(7, 66, 127, 1);
const COLOR_DARKBLUE = Color.fromRGBO(20, 25, 45, 1.0);

const TextTheme TEXT_THEME_DEFAULT = TextTheme(
  headline1:
      TextStyle(color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 26),
  headline2:
      TextStyle(color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 22),
  headline3:
      TextStyle(color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 20),
  headline4:
      TextStyle(color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 16),
  headline5:
      TextStyle(color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 14),
  headline6:
      TextStyle(color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 12),
  bodyText1: TextStyle(
      color: COLOR_BLACK,
      fontWeight: FontWeight.w600,
      fontSize: 18,
      height: 1.5),
  bodyText2: TextStyle(
      color: COLOR_WHITE,
      fontWeight: FontWeight.w600,
      fontSize: 18,
      height: 1.5),
  subtitle1:
      TextStyle(color: COLOR_WHITE, fontWeight: FontWeight.w400, fontSize: 20),
  subtitle2:
      TextStyle(color: COLOR_GREY, fontWeight: FontWeight.w400, fontSize: 20),
);
