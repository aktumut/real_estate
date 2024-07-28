import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:real_estate/src/constants/app_sizes.dart';
import 'package:real_estate/src/extensions/theme_context_ext.dart';
import 'package:real_estate/src/features/shop/domain/house_model.dart';
import 'package:real_estate/src/features/wish_list/data/wish_list_storage_repository.dart';
import 'package:real_estate/src/features/wish_list/presentation/controllers/is_liked_controller.dart';
import 'package:real_estate/src/features/wish_list/presentation/controllers/rebuild_is_liked_provider.dart';
import 'package:real_estate/src/widgets_common/async_value_widget.dart';

class IsLikedWidget extends ConsumerStatefulWidget {
  const IsLikedWidget({
    required this.house,
    this.isHouseDetailPage = false,
    super.key,
  });

  final House house;

  final bool isHouseDetailPage;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _IsLikedWidgetState();
}

class _IsLikedWidgetState extends ConsumerState<IsLikedWidget> {
  @override
  Widget build(BuildContext context) {
    return AsyncValueWidget(
      value: ref.watch(isLikedControllerProvider(house: widget.house)),
      data: (data) {
        return GestureDetector(
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 200),
            child: Icon(
              data ? Icons.favorite_sharp : Icons.favorite_border_sharp,
              color: widget.isHouseDetailPage
                  ? context.theme.colorScheme.onSecondary
                  : context.theme.colorScheme.secondary,
              size: widget.isHouseDetailPage ? Sizes.p32 : Sizes.p24,
            ),
          ),
          onTap: () async {
            await ref.read(
              addDiscardHouseFromWishlistProvider(widget.house).future,
            );

            ref.read(rebuildIsLikedProvider.notifier).state++;
          },
        );
      },
    );
  }
}
