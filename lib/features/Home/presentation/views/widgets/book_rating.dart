import 'package:bookly/core/utils/image_assets.dart';
import 'package:bookly/core/utils/style_manager.dart';
import 'package:bookly/core/utils/value_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
    required this.rating,
    required this.count,
  });
  final MainAxisAlignment mainAxisAlignment;
  final num rating;
  final num count;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        SvgPicture.asset(Assets.imagesStar),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppPadding.p6),
          child: Text(
            rating.toString(),
            style: StyleManager.textStyle16(),
          ),
        ),
        Opacity(
          opacity: 0.5,
          child: Text(
            '($count)',
            style: StyleManager.textStyle14(),
          ),
        ),
      ],
    );
  }
}
