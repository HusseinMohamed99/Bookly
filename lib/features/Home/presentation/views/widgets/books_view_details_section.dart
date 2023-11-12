import 'package:bookly/core/utils/font_manager.dart';
import 'package:bookly/core/utils/style_manager.dart';
import 'package:bookly/core/utils/value_manager.dart';
import 'package:bookly/features/Home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/Home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly/features/Home/presentation/views/widgets/custom_button_action.dart';
import 'package:flutter/material.dart';

class BooksViewDetailsSection extends StatelessWidget {
  const BooksViewDetailsSection({super.key, required this.screenWidth});
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppPadding.p30),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * .17),
            child: const CustomBookImage(
              imageUrl:
                  'https://resizing.flixster.com/_5YUtL7vO7PzpnQ8uYYb40Hsa1k=/206x305/v2/https://resizing.flixster.com/-XZAfHZM39UwaGJIFWKAE8fS0ak=/v3/t/NowShowing/130620/130620_ab.jpg',
            ),
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
            rating: 0,
            count: 0,
          ),
          const SizedBox(height: AppSize.s37),
          const CustomButtonAction(),
        ],
      ),
    );
  }
}
