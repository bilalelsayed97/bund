import 'package:auto_route/auto_route.dart';
import 'package:bund/src/core/utility/helper.dart';
import 'package:bund/src/core/utility/theme.dart';
import 'package:bund/src/investment/presentation/investment_body.dart';
import 'package:flutter/material.dart';

@RoutePage()
class InvestmentPage extends StatelessWidget {
  const InvestmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'hero-tag',
      child: Scaffold(
        appBar: AppBar(
          titleTextStyle: themeData.appBarTheme.titleTextStyle!.copyWith(
            fontSize: context.ww * 0.053,
          ),
          title: const Text('Fixed Income'),
        ),
        body: const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: InvestmentBody(),
        ),
      ),
    );
  }
}
