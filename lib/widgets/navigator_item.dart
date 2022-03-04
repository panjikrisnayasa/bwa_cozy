import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../theme.dart';

class NavigatorItem extends StatelessWidget {
  final String icon;
  final bool isSelected;
  final Function()? onPressed;

  const NavigatorItem({
    Key? key,
    required this.icon,
    this.isSelected = false,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed != null ? onPressed! : null,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 2),
            child: SvgPicture.asset(
              icon,
              color: isSelected ? blueColor : greyColor,
            ),
          ),
          const SizedBox(height: 20),
          isSelected
              ? Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(1000),
                        topRight: Radius.circular(1000)),
                    color: blueColor,
                  ),
                  height: 3,
                  width: 30,
                )
              : const SizedBox(height: 3)
        ],
      ),
    );
  }
}
