import 'package:bund/src/core/utility/consts.dart';
import 'package:bund/src/core/utility/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class ConditionsWidget extends StatelessWidget {
  const ConditionsWidget({
    super.key,
    required this.condition,
  });

  final List<Map<String, String>> condition;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Conditions',
            style: TextStyle(
              color: lightThemeSecondary,
              fontWeight: FontWeight.w600,
              fontSize: context.ww * 0.042,
            ),
          ),
          const Gap(16),
          SizedBox(
            height: context.ww * 0.23,
            child: GridView.count(
              scrollDirection: Axis.horizontal,
              mainAxisSpacing: 16,
              padding: EdgeInsets.zero,
              childAspectRatio: 0.52,
              crossAxisCount: 1,
              children: condition
                  .map(
                    (item) => Container(
                      height: context.ww * 0.23,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            item['icon']!,
                            colorFilter: const ColorFilter.mode(
                                gridHomeIconColor, BlendMode.srcATop),
                          ),
                          const Gap(8),
                          Text(
                            item['name'] ?? '',
                            style: TextStyle(
                              color: girdHomeTextColor,
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
    );
  }
}
