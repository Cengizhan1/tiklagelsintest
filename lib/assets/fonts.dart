import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../constants/colors.dart';

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
