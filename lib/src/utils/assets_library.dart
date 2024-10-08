import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:real_estate/src/constants/app_colors.dart';
import 'package:real_estate/src/constants/app_sizes.dart';
import 'package:real_estate/src/constants/asset_paths.dart';

class IconLibrary {
  static ColorFiltered backIcon = ColorFiltered(
    colorFilter: ColorFilter.mode(
      AppColors.white,
      BlendMode.srcIn,
    ),
    child: SvgPicture.asset(
      IconPaths.backIcon,
    ),
  );

  static SvgPicture bathIcon = SvgPicture.asset(
    IconPaths.bathIcon,
    width: Sizes.p16,
    height: Sizes.p16,
  );

  static SvgPicture bedIcon = SvgPicture.asset(
    IconPaths.bedIcon,
    width: Sizes.p16,
    height: Sizes.p16,
  );

  static SvgPicture closeIcon = SvgPicture.asset(
    IconPaths.closeIcon,
  );

  static SvgPicture dttIcon = SvgPicture.asset(
    IconPaths.dttIcon,
  );

  static SvgPicture homeIcon = SvgPicture.asset(
    IconPaths.homeIcon,
  );

  static SvgPicture infoIcon = SvgPicture.asset(
    IconPaths.infoIcon,
  );

  static SvgPicture layersIcon = SvgPicture.asset(
    IconPaths.layersIcon,
    width: Sizes.p16,
    height: Sizes.p16,
  );

  static SvgPicture locationIcon = SvgPicture.asset(
    IconPaths.locationIcon,
    width: Sizes.p16,
    height: Sizes.p16,
  );

  static SvgPicture searchIcon = SvgPicture.asset(
    IconPaths.searchIcon,
  );

  static SvgPicture whatShotIcon = SvgPicture.asset(
    IconPaths.whatShotIcon,
  );
}

class ImageLibrary {
  static Image launcherIcon = Image.asset(
    ImagePaths.launcherIcon,
  );

  static Image searchStateEmpty = Image.asset(
    ImagePaths.searchStateEmpty,
    fit: BoxFit.cover,
  );

  static Image dTTBanner = Image.asset(
    ImagePaths.dTTBanner,
    fit: BoxFit.cover,
  );

  static Image dTTBannerDarkMode = Image.asset(
    ImagePaths.dTTBannerDarkMode,
    fit: BoxFit.cover,
  );
}
