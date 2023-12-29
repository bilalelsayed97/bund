import 'package:auto_route/auto_route.dart';
import 'package:bund/src/home/presentation/home_body.dart';
import 'package:bund/src/home/presentation/home_nav_bar.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Hero(
      tag: 'hero-tag',
      child: Scaffold(
        body: Homebody(),
        bottomNavigationBar: HomeNavBar(),
      ),
    );
  }
}
