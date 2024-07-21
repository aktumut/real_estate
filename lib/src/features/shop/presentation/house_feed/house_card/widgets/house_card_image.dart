import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:real_estate/src/constants/app_sizes.dart';
import 'package:real_estate/src/constants/strings.dart';
import 'package:real_estate/src/utils/assets_library.dart';
import 'package:real_estate/src/widgets_common/custom_circular_progress_indicator.dart';

class HouseCardImage extends StatelessWidget {
  const HouseCardImage({required this.imagePath, super.key});

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Sizes.p76,
      height: double.infinity,
      child: CachedNetworkImage(
        imageUrl: '$tTextBaseUrl$imagePath',
        fit: BoxFit.cover,
        progressIndicatorBuilder: (context, url, downloadProgress) =>
            CustomCircularProgressIndicator(
          value: downloadProgress.progress,
        ),
        errorWidget: (context, url, error) => IconLibrary.closeIcon,
        imageBuilder: (context, imageProvider) => DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Sizes.p12),
            image: DecorationImage(
              image: imageProvider,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
