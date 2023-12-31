import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/image_assets.dart';
import 'package:bookly/core/utils/value_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: AppPadding.p30,
        left: AppPadding.p30,
        bottom: AppPadding.p30,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(Assets.imagesLogo),
          IconButton(
            onPressed: () {
              GoRouter.of(context).push(AppRouter.searchView);
            },
            icon: SvgPicture.asset(Assets.imagesSearch),
          ),
        ],
      ),
    );
  }
}
