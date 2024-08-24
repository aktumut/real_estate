import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:real_estate/src/constants/app_colors.dart';
import 'package:real_estate/src/constants/app_sizes.dart';
import 'package:real_estate/src/constants/strings.dart';
import 'package:real_estate/src/constants/theme.dart';
import 'package:real_estate/src/extensions/app_localizations_context.dart';
import 'package:real_estate/src/extensions/theme_context_ext.dart';
import 'package:real_estate/src/utils/assets_library.dart';
import 'package:real_estate/src/widgets_common/custom_app_bar.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends ConsumerStatefulWidget {
  const AboutPage({super.key});

  @override
  ConsumerState<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends ConsumerState<AboutPage> {
  @override
  Widget build(BuildContext context) {
    final isDarkMode = ref.watch(themeModeProvider) == ThemeMode.dark;

    return Scaffold(
      appBar: CustomAppBar(
        hasSearchBar: false,
        title: context.loc.aboutPageAbout,
      ),
      body: ListView(
        children: [
          gapH24,
          Padding(
            padding: Paddings.scaffoldHorizontal,
            child: Text(
              context.loc.aboutPageText,
              style: context.textTheme.displayLarge,
            ),
          ),
          gapH16,
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: Sizes.p16,
              horizontal: Sizes.p20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  context.loc.aboutPageDesignAndDevelopment,
                  style: context.textTheme.headlineMedium,
                ),
                gapH16,
                Row(
                  children: [
                    SizedBox(
                      width: context.screenWidth * 0.4,
                      child: isDarkMode
                          ? ImageLibrary.dTTBannerDarkMode
                          : ImageLibrary.dTTBanner,
                    ),
                    gapW16,
                    _buildLinkText(context),
                    const Spacer(),
                    Switch(
                      value: isDarkMode,
                      onChanged: (isOn) {
                        ref.read(themeModeProvider.notifier).state =
                            isOn ? ThemeMode.dark : ThemeMode.light;
                      },
                    ),
                    gapH16,
                  ],
                ),
              ],
            ),
          ),
          gapH64,
        ],
      ),
    );
  }

  Column _buildLinkText(BuildContext context) {
    return Column(
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
          onTap: () => launchUrl(Uri.parse(tTextWebSite)),
        ),
      ],
    );
  }
}
