import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/font_manager.dart';
import 'package:bookly/core/utils/style_manager.dart';
import 'package:bookly/core/utils/value_manager.dart';
import 'package:bookly/features/Home/data/models/book_model/book_model.dart';
import 'package:bookly/features/Home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/Home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BooksListViewItem extends StatelessWidget {
  const BooksListViewItem({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
    required this.bookModel,
  });

  final double screenWidth;
  final double screenHeight;
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.bookDetailsView);
      },
      child: SizedBox(
        height: 150,
        width: screenWidth,
        child: Row(
          children: [
            CustomBookImage(
                imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ?? ''),
            const SizedBox(
              width: AppSize.s30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: AppSize.s5),
                  Text(
                    bookModel.volumeInfo.title ?? '',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: StyleManager.textStyle20(
                      fontFamily: FontConstant.sectraFamily,
                    ),
                  ),
                  const SizedBox(height: AppSize.s3),
                  Opacity(
                    opacity: 0.7,
                    child: Text(
                      bookModel.volumeInfo.authors?[0] ?? '',
                      style: StyleManager.textStyle14(
                        fontWeight: FontWeightManager.medium,
                      ),
                    ),
                  ),
                  const SizedBox(height: AppSize.s3),
                  Expanded(
                    child: Row(
                      children: [
                        Text(
                          'FREE €',
                          style: StyleManager.textStyle20(
                            fontWeight: FontWeightManager.bold,
                          ),
                        ),
                        const Spacer(),
                        const BookRating(
                          rating: 0,
                          count: 0,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
