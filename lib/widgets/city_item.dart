import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../theme.dart';

class CityItem extends StatelessWidget {
  final String imageUrl;
  final String cityName;

  const CityItem({
    Key? key,
    required this.imageUrl,
    required this.cityName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 150,
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: cardColor,
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          CachedNetworkImage(
            imageUrl: imageUrl,
            progressIndicatorBuilder: (context, url, downloadProgress) =>
                Center(
              child: Wrap(
                children: const [CircularProgressIndicator()],
              ),
            ),
            errorWidget: (context, url, error) => const Icon(Icons.error),
            height: 115,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                cityName,
                style: mediumFont.copyWith(fontSize: 16),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          )
        ],
      ),
    );
  }
}
