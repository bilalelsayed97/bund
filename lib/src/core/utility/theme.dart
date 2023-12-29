import 'package:bund/src/core/utility/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

final themeData = ThemeData(
  useMaterial3: true,
  appBarTheme: const AppBarTheme(
      titleTextStyle:
          TextStyle(color: appBarTextColor, fontWeight: FontWeight.w600),
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      centerTitle: true,
      backgroundColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      elevation: 0,
      scrolledUnderElevation: 0,
      foregroundColor: darkShade),
  fontFamily: 'Lato',
  scaffoldBackgroundColor: scaffoldColor,
);

ButtonStyle customButtonStyle = ButtonStyle(
    backgroundColor: const MaterialStatePropertyAll(scaffoldColor),
    surfaceTintColor: const MaterialStatePropertyAll(Colors.transparent),
    elevation: const MaterialStatePropertyAll(4),
    shadowColor: MaterialStatePropertyAll(shadowColor.withOpacity(0.2)));
