import 'package:bookly/core/utils/font_manager.dart';
import 'package:bookly/core/utils/image_assets.dart';
import 'package:bookly/core/utils/style_manager.dart';
import 'package:bookly/core/utils/value_manager.dart';
import 'package:bookly/features/Home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/Home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * .17),
            child: const CustomBookImage(),
          ),
          const SizedBox(height: AppSize.s43),
          Text(
            'The Jungle Book',
            style: StyleManager.textStyle30(),
          ),
          const SizedBox(height: AppSize.s6),
          Opacity(
            opacity: .7,
            child: Text(
              'Rudyard Kipling',
              style: StyleManager.textStyle18(
                fontWeight: FontWeightManager.medium,
              ),
            ),
          ),
          const SizedBox(height: AppSize.s16),
          const BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ],
      ),
    );
  }
}

class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: AppPadding.p30,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: const Icon(Icons.close),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(Assets.imagesCart),
          ),
        ],
      ),
    );
  }
}
