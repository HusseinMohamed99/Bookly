import 'package:bookly/core/utils/color_manager.dart';
import 'package:bookly/core/utils/image_assets.dart';
import 'package:bookly/core/utils/style_manager.dart';
import 'package:bookly/core/utils/value_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(Assets.imagesStar),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppPadding.p6),
          child: Text(
            '4.5',
            style: StyleManager.textStyle16(),
          ),
        ),
        Text(
          '(2390)',
          style: StyleManager.textStyle14(
            color: ColorManager.greyColor,
          ),
        ),
      ],
    );
  }
}
