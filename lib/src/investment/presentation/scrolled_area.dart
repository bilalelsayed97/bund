import 'package:bund/src/core/utility/consts.dart';
import 'package:bund/src/core/utility/helper.dart';
import 'package:bund/src/home/infrastructure/dummy_data.dart';
import 'package:bund/src/investment/application/cubit/income_cubit.dart';
import 'package:bund/src/investment/presentation/investment_amout_control_widget.dart';
import 'package:bund/src/investment/presentation/custom_chips.dart';
import 'package:bund/src/investment/presentation/custom_tile.dart';
import 'package:bund/src/investment/presentation/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ScrolledArea extends StatelessWidget {
  const ScrolledArea({
    super.key,
    required this.cubit,
    required this.state,
  });

  final IncomeCubit cubit;
  final IncomeState state;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Fixed Income Portfolio',
            style: TextStyle(
                color: appBarTextColor,
                fontWeight: FontWeight.w700,
                fontSize: context.ww * 0.058),
          ),
          Text(
            r'A fixed income portfolio consists of bonds and other securities providing steady income and relatively lower risk.',
            style: TextStyle(
                color: lightShade,
                fontWeight: FontWeight.w600,
                fontSize: context.ww * 0.037),
          ),
          const Gap(30),
          Center(
            child: Text(
              'Annual Yield To Maturity (YTM)',
              style: TextStyle(
                color: lightShade,
                fontWeight: FontWeight.w700,
                fontSize: context.ww * 0.042,
              ),
            ),
          ),
          Center(
            child: Text(
              '${(cubit.annualYieldMaturityPercent)}%',
              style: TextStyle(
                color: bundMain,
                fontWeight: FontWeight.w600,
                fontSize: context.ww * 0.082,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  customTinyText('Average Rating', context),
                  customMidText('AA', context),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  customTinyText('Bonds', context),
                  customMidText('20 Companies', context),
                ],
              ),
            ],
          ),
          customTinyText('Term Types', context),
          const Gap(10),
          Row(
            children: [
              customChip('3 Year Term', context),
              const Gap(5),
              customChip('5 Year Term', context),
            ],
          ),
          const Gap(16),
          Text(
            'Investment Calculator',
            style: TextStyle(
                fontSize: context.ww * 0.042,
                fontWeight: FontWeight.w600,
                color: bundMain),
          ),
          const Gap(16),
          InvestementAmountControlWidget(cubit: cubit, state: state),
          const Gap(10),
          Text(
            'Bonds',
            style: TextStyle(
                fontSize: context.ww * 0.042,
                fontWeight: FontWeight.w600,
                color: bundMain),
          ),
          const Gap(16),
          ...bonds.map((bond) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: CustomListTile(
                    titile: bond['title']!,
                    subtitle: bond['subtitle']!,
                    percent: bond['percent']!,
                    image: bond['image']!),
              )),
          const Gap(10),
          SizedBox(height: context.ww * 0.22),
        ],
      ),
    );
  }
}
