import 'package:bookly/core/utils/color_manager.dart';
import 'package:bookly/core/utils/image_assets.dart';
import 'package:bookly/core/utils/value_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        AspectRatio(
          aspectRatio: 2.7 / 4,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: const DecorationImage(
                image: NetworkImage(
                    'https://resizing.flixster.com/_5YUtL7vO7PzpnQ8uYYb40Hsa1k=/206x305/v2/https://resizing.flixster.com/-XZAfHZM39UwaGJIFWKAE8fS0ak=/v3/t/NowShowing/130620/130620_ab.jpg'),
              ),
            ),
          ),
        ),
        IconButton(
          icon: CircleAvatar(
            backgroundColor: ColorManager.greyColor.withOpacity(.2),
            child: SvgPicture.asset(
              Assets.imagesPlay,
            ),
          ),
          onPressed: () {},
        )
      ],
    );
  }
}
