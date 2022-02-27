import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../theme.dart';

class Favorite extends StatelessWidget {
  final bool isFavored;
  final int? rating;

  const Favorite({
    Key? key,
    this.isFavored = false,
    this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isFavored,
      child: Align(
        alignment: Alignment.topRight,
        child: Container(
          width: 70,
          padding: const EdgeInsets.symmetric(vertical: 5),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(18),
            ),
            color: primaryColor,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/icons/star.svg'),
              if (rating != null)
                Container(
                  margin: const EdgeInsets.only(left: 3),
                  child: Text(
                    '$rating / 5',
                    style: mediumFont.copyWith(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
