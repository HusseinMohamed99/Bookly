import 'package:bookly/core/utils/font_manager.dart';
import 'package:bookly/core/utils/style_manager.dart';
import 'package:bookly/core/utils/value_manager.dart';
import 'package:bookly/features/Home/data/models/book_model/book_model.dart';
import 'package:bookly/features/Home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/Home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly/features/Home/presentation/views/widgets/custom_button_action.dart';
import 'package:flutter/material.dart';

class BooksViewDetailsSection extends StatelessWidget {
  const BooksViewDetailsSection(
      {super.key, required this.screenWidth, required this.bookModel});
  final double screenWidth;
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppPadding.p30),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * .17),
            child: CustomBookImage(
              imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ?? '',
            ),
          ),
          const SizedBox(height: AppSize.s43),
          Text(
            bookModel.volumeInfo.title ?? '',
            textAlign: TextAlign.center,
            style: StyleManager.textStyle30(),
          ),
          const SizedBox(height: AppSize.s6),
          Opacity(
            opacity: .7,
            child: Text(
              bookModel.volumeInfo.authors?[0] ?? '',
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
          CustomButtonAction(
            bookModel: bookModel,
          ),
        ],
      ),
    );
  }
}
