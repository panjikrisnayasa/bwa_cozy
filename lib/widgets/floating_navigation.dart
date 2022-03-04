import 'package:flutter/material.dart';

import '../theme.dart';
import 'navigator_item.dart';

class FloatingNavigation extends StatelessWidget {
  final Function(int index) isNavigatorSelected;
  final Function(int index) navigatorOnPressed;

  const FloatingNavigation({
    Key? key,
    required this.isNavigatorSelected,
    required this.navigatorOnPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(23),
            color: lightGreyColor,
          ),
          padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
          margin: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            children: [
              NavigatorItem(
                icon: 'assets/icons/home.svg',
                isSelected: isNavigatorSelected(0),
                onPressed: () {
                  navigatorOnPressed(0);
                },
              ),
              const Spacer(),
              NavigatorItem(
                icon: 'assets/icons/mail.svg',
                isSelected: isNavigatorSelected(1),
                onPressed: () {
                  navigatorOnPressed(1);
                },
              ),
              const Spacer(),
              NavigatorItem(
                icon: 'assets/icons/card.svg',
                isSelected: isNavigatorSelected(2),
                onPressed: () {
                  navigatorOnPressed(2);
                },
              ),
              const Spacer(),
              NavigatorItem(
                icon: 'assets/icons/love.svg',
                isSelected: isNavigatorSelected(3),
                onPressed: () {
                  navigatorOnPressed(3);
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
