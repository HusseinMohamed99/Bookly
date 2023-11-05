import 'package:bookly/core/utils/image_assets.dart';
import 'package:bookly/core/utils/style_manager.dart';
import 'package:bookly/core/utils/value_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
  });
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        SvgPicture.asset(Assets.imagesStar),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppPadding.p6),
          child: Text(
            '4.5',
            style: StyleManager.textStyle16(),
          ),
        ),
        Opacity(
          opacity: 0.5,
          child: Text(
            '(2390)',
            style: StyleManager.textStyle14(),
          ),
        ),
      ],
    );
  }
}
