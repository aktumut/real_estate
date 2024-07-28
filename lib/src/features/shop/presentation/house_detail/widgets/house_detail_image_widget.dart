import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:real_estate/src/constants/app_sizes.dart';
import 'package:real_estate/src/constants/strings.dart';
import 'package:real_estate/src/features/shop/domain/house_model.dart';
import 'package:real_estate/src/features/wish_list/presentation/widgets/is_liked_widget.dart';
import 'package:real_estate/src/utils/assets_library.dart';
import 'package:real_estate/src/widgets_common/custom_circular_progress_indicator.dart';

class HouseDetailImageWidget extends StatelessWidget {
  const HouseDetailImageWidget({
    required this.house,
    super.key,
  });

  final House house;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: Sizes.heightHouseDetailImage,
            child: CachedNetworkImage(
              imageUrl: '$tTextBaseUrl${house.image}',
              fit: BoxFit.cover,
              progressIndicatorBuilder: (context, url, downloadProgress) =>
                  CustomCircularProgressIndicator(
                value: downloadProgress.progress,
              ),
              errorWidget: (context, url, error) => IconLibrary.closeIcon,
            ),
          ),
          Positioned(
            top: Sizes.heightHouseDetailImage - Sizes.p64,
            right: Sizes.p20,
            child: IsLikedWidget(house: house, isHouseDetailPage: true),
          ),
        ],
      ),
    );
  }
}
