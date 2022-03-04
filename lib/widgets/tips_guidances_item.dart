import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../theme.dart';

class TipsGuidancesItem extends StatelessWidget {
  final String image;
  final String title;
  final String lastUpdate;

  const TipsGuidancesItem({
    Key? key,
    required this.image,
    required this.title,
    required this.lastUpdate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
            ),
            clipBehavior: Clip.antiAlias,
            child: Image.asset(image),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: mediumFont.copyWith(fontSize: 18)),
                Text(
                  'Updated $lastUpdate',
                  style: lightFont.copyWith(color: darkGreyColor),
                ),
              ],
            ),
          ),
          const Spacer(),
          SvgPicture.asset('assets/icons/right_arrow.svg'),
        ],
      ),
    );
  }
}
