import 'package:bund/src/core/utility/assets_data.dart';
import 'package:bund/src/core/utility/consts.dart';
import 'package:bund/src/core/utility/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class CustomCarousel extends StatelessWidget {
  const CustomCarousel({
    super.key,
    required PageController pageController1,
    required PageController pageController2,
    required this.sliderData,
  })  : _pageController1 = pageController1,
        _pageController2 = pageController2;

  final PageController _pageController1;
  final PageController _pageController2;
  final List<Map<String, dynamic>> sliderData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.ww * 0.42,
      child: PageView.builder(
          onPageChanged: (int page) {
            _pageController2.jumpToPage(
              page,
            );
          },
          controller: _pageController1,
          itemCount: sliderData.length,
          itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(
                  right: 16,
                ),
                child: Container(
                  padding: const EdgeInsets.all(12),
                  width: context.ww * 0.87,
                  height: context.ww * 0.42,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4)),
                  child: Row(
                    children: [
                      Expanded(
                          child: Column(
                        children: [
                          Expanded(
                              flex: 3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(width: context.ww),
                                  Text(
                                    'bünd',
                                    style: TextStyle(
                                      color: bundMain,
                                      fontSize: context.ww * 0.061,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Text(
                                    sliderData[index]['name'],
                                    style: TextStyle(
                                      color: lightTheme,
                                      fontSize: context.ww * 0.061,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              )),
                          Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                SizedBox(width: context.ww),
                                MaterialButton(
                                  height: 34,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4)),
                                  color: bundMain.withOpacity(0.05),
                                  elevation: 0,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 8),
                                  onPressed: () {},
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SvgPicture.asset(
                                        AssetsData.arrow,
                                      ),
                                      const Gap(4),
                                      Text(
                                        'Start Now',
                                        style: TextStyle(
                                            color: bundMain,
                                            fontSize: context.ww * 0.034,
                                            fontWeight: FontWeight.w500),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                      Expanded(
                        child: SizedBox(
                          width: context.ww * 0.32,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                ...sliderData[index]['photos']
                                    .map(
                                      (String photo) => photo.contains('png')
                                          ? Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 8),
                                              child: Image.asset(
                                                photo,
                                                width: context.ww * 0.32,
                                              ),
                                            )
                                          : Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 8),
                                              child: SvgPicture.asset(
                                                photo,
                                              ),
                                            ),
                                    )
                                    .toList(),
                              ]),
                        ),
                      ),
                    ],
                  ),
                ),
              )),
    );
  }
}
