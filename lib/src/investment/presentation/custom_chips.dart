import 'package:bund/src/core/utility/consts.dart';
import 'package:bund/src/core/utility/helper.dart';
import 'package:bund/src/investment/application/cubit/income_cubit.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomChips extends StatelessWidget {
  const CustomChips({
    super.key,
    required this.cubit,
    required this.state,
  });

  final IncomeCubit cubit;
  final IncomeState state;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: context.ww * 0.28,
          child: AspectRatio(
            aspectRatio: 4.25,
            child: InputChip(
              showCheckmark: false,
              selected: state.term == 3,
              onSelected: (_) {
                cubit.updateTerm(3);
              },
              selectedColor: chipBackgroundColor,
              surfaceTintColor: Colors.transparent,
              backgroundColor: Colors.white,
              shadowColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
                side: state.term == 3
                    ? const BorderSide(
                        color: bundMain,
                        width: 1,
                      )
                    : const BorderSide(
                        color: Colors.transparent,
                        width: 0,
                      ),
              ),
              padding: const EdgeInsets.only(
                bottom: 5,
                left: 8,
                right: 8,
              ),
              label: Text(
                '3 Year Term',
                style: TextStyle(
                  color: state.term == 3 ? bundMain : lightShade,
                  fontWeight: FontWeight.w600,
                  fontSize: context.ww * 0.034,
                ),
              ),
              elevation: 0,
            ),
          ),
        ),
        const Gap(10),
        SizedBox(
          width: context.ww * 0.28,
          child: AspectRatio(
            aspectRatio: 4.25,
            child: InputChip(
              showCheckmark: false,
              selected: state.term == 5,
              onSelected: (_) {
                cubit.updateTerm(5);
              },
              selectedColor: chipBackgroundColor,
              surfaceTintColor: Colors.transparent,
              backgroundColor: Colors.white,
              shadowColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
                side: state.term == 5
                    ? const BorderSide(
                        color: bundMain,
                        width: 1,
                      )
                    : const BorderSide(
                        color: Colors.transparent,
                        width: 0,
                      ),
              ),
              padding: const EdgeInsets.only(
                bottom: 5,
                left: 8,
                right: 8,
              ),
              label: Text(
                '5 Year Term',
                style: TextStyle(
                  color: state.term == 5 ? bundMain : lightShade,
                  fontWeight: FontWeight.w600,
                  fontSize: context.ww * 0.034,
                ),
              ),
              elevation: 0,
            ),
          ),
        ),
      ],
    );
  }
}

Widget customChip(String text, BuildContext context) {
  return SizedBox(
    width: context.ww * 0.28,
    child: AspectRatio(
      aspectRatio: 4.25,
      child: Chip(
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
          side: BorderSide(
            color: bundMain.withOpacity(0.1),
            width: 1,
          ),
        ),
        padding: const EdgeInsets.only(
          bottom: 5,
          left: 8,
          right: 8,
        ),
        label: Text(
          text,
          style: TextStyle(
            color: chipTextColor,
            fontWeight: FontWeight.w600,
            fontSize: context.ww * 0.034,
          ),
        ),
        elevation: 0,
      ),
    ),
  );
}
