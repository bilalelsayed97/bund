import 'package:bund/src/core/utility/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomSvg extends StatelessWidget {
  final String name;
  const CustomSvg({
    required this.name,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      name,
      width: context.ww * 0.064,
      height: context.ww * 0.064,
    );
  }
}
