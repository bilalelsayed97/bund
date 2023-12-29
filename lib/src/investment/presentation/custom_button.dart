import 'package:bund/src/core/utility/consts.dart';
import 'package:bund/src/core/utility/helper.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: AspectRatio(
          aspectRatio: 6.125,
          child: MaterialButton(
            elevation: 0,
            hoverElevation: 0,
            focusElevation: 1,
            highlightElevation: 1,
            focusColor: lightShade.withOpacity(0.3),
            hoverColor: lightShade.withOpacity(0.3),
            splashColor: lightShade.withOpacity(0.3),
            highlightColor: lightShade.withOpacity(0.3),
            color: bundMain,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
            height: context.ww / 6.125 - 32,
            onPressed: () {},
            child: Text(
              'Create Investment Account',
              style: TextStyle(
                  fontSize: context.ww * 0.042,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
