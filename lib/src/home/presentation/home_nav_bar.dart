import 'package:auto_route/auto_route.dart';
import 'package:bund/src/core/presentation/routes/app_router.gr.dart';
import 'package:bund/src/core/utility/assets_data.dart';
import 'package:bund/src/core/utility/consts.dart';
import 'package:bund/src/core/utility/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeNavBar extends StatelessWidget {
  const HomeNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      elevation: 0,
      indicatorColor: Colors.white,
      backgroundColor: Colors.white,
      shadowColor: darkShade,
      surfaceTintColor: Colors.transparent,
      height: context.ww * 0.17,
      onDestinationSelected: (index) {
        if (index == 1) {
          AutoRouter.of(context).push(const InvestmentRoute());
        }
      },
      destinations: [
        NavigationDestination(
          label: 'Home',
          icon: SvgPicture.asset(AssetsData.home),
        ),
        NavigationDestination(
          label: 'Investment',
          icon: SvgPicture.asset(AssetsData.investment),
        ),
        NavigationDestination(
          label: 'Chat',
          icon: SvgPicture.asset(AssetsData.chat),
        ),
      ],
    );
  }
}
