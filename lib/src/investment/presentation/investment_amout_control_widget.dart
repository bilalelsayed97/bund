import 'package:bund/src/core/utility/assets_data.dart';
import 'package:bund/src/core/utility/consts.dart';
import 'package:bund/src/core/utility/helper.dart';
import 'package:bund/src/core/utility/theme.dart';
import 'package:bund/src/investment/application/cubit/income_cubit.dart';
import 'package:bund/src/investment/presentation/custom_chips.dart';
import 'package:bund/src/investment/presentation/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class InvestementAmountControlWidget extends StatelessWidget {
  const InvestementAmountControlWidget({
    super.key,
    required this.cubit,
    required this.state,
  });

  final IncomeCubit cubit;
  final IncomeState state;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: context.ww,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          customTinyText('Investment Amount', context),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTapDown: (details) {
                  cubit.isPressed = true;
                  cubit.reDecreasing();
                },
                onTapUp: (details) {
                  cubit.isPressed = false;
                },
                onTapCancel: () {
                  cubit.isPressed = false;
                },
                child: IconButton(
                  style: state.amount == 250
                      ? const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(scaffoldColor),
                        )
                      : customButtonStyle,
                  onPressed: state.amount == 250
                      ? null
                      : () {
                          cubit.decreaseAmount();
                        },
                  icon: state.amount == 250
                      ? SvgPicture.asset(
                          AssetsData.minus,
                          colorFilter: const ColorFilter.mode(
                              Colors.grey, BlendMode.srcATop),
                        )
                      : SvgPicture.asset(AssetsData.minus),
                ),
              ),
              Text(
                cubit.getAmount,
                style: TextStyle(
                    fontSize: context.ww * 0.096,
                    fontWeight: FontWeight.w600,
                    color: bundMain),
              ),
              GestureDetector(
                onTapDown: (details) {
                  cubit.isPressed = true;
                  cubit.reIncreasing();
                },
                onTapUp: (details) {
                  cubit.isPressed = false;
                },
                onTapCancel: () {
                  cubit.isPressed = false;
                },
                child: IconButton(
                  style: customButtonStyle,
                  onPressed: () {
                    cubit.increaseAmount();
                  },
                  icon: SvgPicture.asset(AssetsData.add),
                ),
              ),
            ],
          ),
          const Gap(10),
          Container(
            alignment: Alignment.center,
            width: context.ww * 0.22,
            height: context.ww * 0.065,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: kgreenColor.withOpacity(0.1),
            ),
            child: Text(
              '${(cubit.annualYieldMaturityPercent)}% YTM',
              style: TextStyle(
                  fontSize: context.ww * 0.034,
                  fontWeight: FontWeight.w600,
                  color: kgreenColor),
            ),
          ),
          const Gap(16),
          CustomChips(
            cubit: cubit,
            state: state,
          ),
          const Gap(16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  customTinyText('Capital At Maturity', context),
                  const Gap(4),
                  customMidText(cubit.getCapitalAtMaturity, context),
                  const Gap(4),
                  customTinyText('Annual Interest', context),
                  const Gap(4),
                  customMidText(cubit.getAnnualInterest, context),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  customTinyText('Total Interest', context),
                  const Gap(4),
                  customMidText(cubit.getTotalInterest, context),
                  const Gap(4),
                  const Gap(4),
                  customTinyText('Average Maturity Date ', context),
                  const Gap(4),
                  customMidText(cubit.getAverageMaturityDate, context),
                  const Gap(4),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
