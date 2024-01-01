import 'dart:async';

import 'package:bund/src/core/utility/helper.dart';
import 'package:bund/src/home/infrastructure/dummy_data.dart';
import 'package:bund/src/home/presentation/conditions_widget.dart';
import 'package:bund/src/home/presentation/custom_appbar.dart';
import 'package:bund/src/home/presentation/custom_carousel.dart';
import 'package:bund/src/home/presentation/custom_page_indicator.dart';
import 'package:bund/src/home/presentation/what_you_get_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Homebody extends StatefulWidget {
  const Homebody({super.key});

  @override
  State<Homebody> createState() => _HomebodyState();
}

class _HomebodyState extends State<Homebody> {
  final PageController _sliderpageController =
      PageController(viewportFraction: 0.9);
  final PageController _pageController = PageController();
  late OverlayEntry _overlayEntry;

  void simulateContentUpdate() {
    _overlayEntry = createOverlayEntry();
    Overlay.of(context).insert(_overlayEntry);

    Timer(const Duration(milliseconds: 350), () {
      _overlayEntry.remove();
    });
  }

  OverlayEntry createOverlayEntry() {
    OverlayEntry overlayEntry = OverlayEntry(
      builder: (context) => Positioned(
        top: context.ww * 0.649,
        left: 0.0,
        right: 0.0,
        bottom: 0.0,
        child: Container(
          color: Colors.white.withOpacity(0.2),
        ),
      ),
    );

    return overlayEntry;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CutstomAppBar(),
        const Gap(16),
        CustomCarousel(
            pageController1: _sliderpageController,
            pageController2: _pageController,
            sliderData: sliderData),
        const Gap(16),
        Center(child: CustomPageIndicator(controller: _sliderpageController)),
        Flexible(
          child: PageView.builder(
            controller: _pageController,
            onPageChanged: (int page) {
              _sliderpageController.animateToPage(
                page,
                duration: const Duration(milliseconds: 300),
                curve: Curves.fastLinearToSlowEaseIn,
              );
              simulateContentUpdate();
            },
            itemCount: whatYouGet.length,
            itemBuilder: (context, index) => AnimatedBuilder(
              animation: _pageController,
              builder: (context, child) => Column(
                children: [
                  SizedBox(
                      height: context.ww * 0.33,
                      child:
                          ConditionsWidget(condition: homeConditions[index])),
                  const Gap(16),
                  WhatYouGetWidget(whatYouGet: whatYouGet[index]),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
