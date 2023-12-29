import 'package:bund/src/core/utility/consts.dart';
import 'package:bund/src/core/utility/helper.dart';
import 'package:flutter/material.dart';

Widget customTinyText(String text, BuildContext context) {
  return Text(
    text,
    style: TextStyle(
      color: lightShade,
      fontWeight: FontWeight.w600,
      fontSize: context.ww * 0.032,
    ),
  );
}

Widget customMidText(String text, BuildContext context) {
  return Text(
    text,
    style: TextStyle(
      color: bundMain,
      fontWeight: FontWeight.w600,
      fontSize: context.ww * 0.058,
    ),
  );
}
