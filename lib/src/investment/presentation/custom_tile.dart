import 'package:bund/src/core/utility/consts.dart';
import 'package:bund/src/core/utility/helper.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomListTile extends StatelessWidget {
  final String titile;
  final String subtitle;
  final String percent;
  final String image;
  const CustomListTile({
    super.key,
    required this.titile,
    required this.subtitle,
    required this.percent,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.ww * 0.19,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Container(
            width: context.ww * 0.128,
            decoration: const BoxDecoration(
              color: scaffoldColor,
              shape: BoxShape.circle,
            ),
            child: Center(child: Image.asset(image)),
          ),
          const Gap(8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                titile,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: context.ww * 0.042,
                ),
              ),
              Text(
                subtitle,
                style: TextStyle(
                  color: bondSubtitle,
                  fontWeight: FontWeight.w400,
                  fontSize: context.ww * 0.032,
                ),
              ),
            ],
          ),
          const Spacer(),
          Text(
            percent,
            style: TextStyle(
              color: kgreenColor,
              fontWeight: FontWeight.w600,
              fontSize: context.ww * 0.037,
            ),
          ),
        ],
      ),
    );
  }
}
