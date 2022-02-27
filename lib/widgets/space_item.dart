import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../theme.dart';
import 'favorite.dart';

class SpaceItem extends StatelessWidget {
  final String imageUrl;
  final int rating;
  final String name;
  final int pricePerMonth;
  final bool isFavored;
  final String city;

  const SpaceItem({
    Key? key,
    required this.imageUrl,
    required this.rating,
    required this.name,
    required this.pricePerMonth,
    this.isFavored = true,
    required this.city,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Container(
            width: 130,
            height: 110,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
            ),
            clipBehavior: Clip.antiAlias,
            child: Stack(
              children: [
                CachedNetworkImage(
                  width: double.infinity,
                  height: double.infinity,
                  imageUrl: imageUrl,
                  progressIndicatorBuilder: (context, url, downloadProgress) =>
                      Center(
                    child: Wrap(
                      children: const [CircularProgressIndicator()],
                    ),
                  ),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                  fit: BoxFit.cover,
                ),
                Favorite(isFavored: isFavored, rating: rating),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: mediumFont.copyWith(fontSize: 18)),
                RichText(
                  text: TextSpan(
                      text: '\$$pricePerMonth',
                      style: mediumFont.copyWith(
                        fontSize: 16,
                        color: primaryColor,
                      ),
                      children: [
                        TextSpan(
                          text: ' / month',
                          style: lightFont.copyWith(
                            fontSize: 16,
                            color: greyFont,
                          ),
                        ),
                      ]),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 16),
                  child: Text(
                    city,
                    style: lightFont.copyWith(color: greyFont),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
