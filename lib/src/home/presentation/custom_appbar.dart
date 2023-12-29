import 'package:bund/src/core/presentation/widgets/custom_svg.dart';
import 'package:bund/src/core/utility/assets_data.dart';
import 'package:bund/src/core/utility/consts.dart';
import 'package:bund/src/core/utility/helper.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CutstomAppBar extends StatelessWidget {
  const CutstomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16,
        right: 16,
        top: MediaQuery.of(context).padding.top * 1.64,
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            width: context.ww * 0.106,
            height: context.ww * 0.106,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white, // Change the color as needed
            ),
            child: const CustomSvg(name: AssetsData.user),
          ),
          const Gap(12),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                (DateTime.now().hour <= 12 && DateTime.now().hour >= 5)
                    ? 'Good Morning'
                    : (DateTime.now().hour <= 18 && DateTime.now().hour >= 12)
                        ? 'Good Afternoon'
                        : 'Good Evening',
                style: TextStyle(
                  color: lightShade,
                  fontSize: context.ww * 0.026,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                'Mehemet Taser',
                style: TextStyle(
                  color: darkShade,
                  fontSize: context.ww * 0.037,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.all(8),
            width: context.ww * 0.106,
            height: context.ww * 0.106,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white, // Change the color as needed
            ),
            child: const CustomSvg(name: AssetsData.notification),
          ),
        ],
      ),
    );
  }
}
