import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:real_estate/src/constants/app_sizes.dart';
import 'package:real_estate/src/utilities/assets_library.dart';
import 'package:real_estate/src/widgets_common/custom_circular_progress_indicator.dart';

class HouseCardImage extends StatelessWidget {
  const HouseCardImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Sizes.p76,
      height: double.infinity,
      child: CachedNetworkImage(
        imageUrl: 'http://via.placeholder.com/350x150',
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
