import 'package:bund/src/core/utility/consts.dart';
import 'package:bund/src/core/utility/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class WhatYouGetWidget extends StatelessWidget {
  const WhatYouGetWidget({
    super.key,
    required this.whatYouGet,
  });

  final List<Map<String, dynamic>> whatYouGet;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'What You Get',
              style: TextStyle(
                color: lightThemeSecondary,
                fontWeight: FontWeight.w600,
                fontSize: context.ww * 0.042,
              ),
            ),
            const Gap(16),
            Expanded(
              child: GridView.count(
                scrollDirection: Axis.vertical,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                padding: EdgeInsets.zero,
                childAspectRatio: 1.03,
                crossAxisCount: 3,
                children: whatYouGet
                    .map(
                      (item) => Container(
                        height: context.ww * 0.23,
                        decoration: BoxDecoration(
                          color: item['status'] ? Colors.white : Colors.white10,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              item['icon']!,
                              colorFilter: ColorFilter.mode(
                                  item['status']
                                      ? gridHomeIconColor
                                      : gridHomeIconColor.withOpacity(0.1),
                                  BlendMode.srcIn),
                            ),
                            const Gap(8),
                            Text(
                              item['name'] ?? '',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: item['status']
                                    ? girdHomeTextColor
                                    : girdHomeTextColor.withOpacity(0.1),
                                fontWeight: FontWeight.w600,
                                fontSize: context.ww * 0.032,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
