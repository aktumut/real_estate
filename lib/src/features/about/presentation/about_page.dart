import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:real_estate/src/constants/app_colors.dart';
import 'package:real_estate/src/constants/app_sizes.dart';
import 'package:real_estate/src/extensions/app_localizations_context.dart';
import 'package:real_estate/src/extensions/theme_context_ext.dart';
import 'package:real_estate/src/utils/assets_library.dart';
import 'package:real_estate/src/widgets_common/custom_app_bar.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends ConsumerWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: CustomAppBar(
        hasSearchBar: false,
        title: context.loc.aboutPageAbout,
      ),
      body: Padding(
        padding: Paddings.scaffoldHorizontal,
        child: ListView(
          children: [
            gapH24,
            Text(
              context.loc.aboutPageText,
              style: context.textTheme.bodyMedium?.copyWith(
                color: AppColors.medium,
              ),
            ),
            gapH32,
            Text(
              context.loc.aboutPageDesignAndDevelopment,
              style: context.textTheme.bodyLarge,
            ),
            gapH32,
            Row(
              children: [
                SizedBox(
                  width: context.screenWidth * 0.4,
                  child: ImageLibrary.dTTBanner,
                ),
                gapW16,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      context.loc.aboutByCompany,
                      style: context.textTheme.bodyMedium,
                    ),
                    InkWell(
                      child: Text(
                        context.loc.aboutCompanyShortWebSite,
                        style: context.textTheme.bodyMedium
                            ?.copyWith(color: AppColors.buttonColor),
                      ),
                      onTap: () => launchUrl(Uri.parse('https://d-tt.nl')),
                    ),
                  ],
                ),
              ],
            ),
            gapH64,
          ],
        ),
      ),
    );
  }
}
