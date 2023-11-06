import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/font_manager.dart';
import 'package:bookly/core/utils/style_manager.dart';
import 'package:bookly/core/utils/value_manager.dart';
import 'package:bookly/features/Home/presentation/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BooksListViewItem extends StatelessWidget {
  const BooksListViewItem({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  final double screenWidth;
  final double screenHeight;
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
            AspectRatio(
              aspectRatio: 2.5 / 4,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: AppPadding.p30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: const DecorationImage(
                    image: NetworkImage(
                        'https://resizing.flixster.com/_5YUtL7vO7PzpnQ8uYYb40Hsa1k=/206x305/v2/https://resizing.flixster.com/-XZAfHZM39UwaGJIFWKAE8fS0ak=/v3/t/NowShowing/130620/130620_ab.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: AppSize.s30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: AppSize.s5),
                  Text(
                    'Harry Potter and the Goblet of Fire',
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
                      'J.K. Rowling',
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
                          '19.99 €',
                          style: StyleManager.textStyle20(
                            fontWeight: FontWeightManager.bold,
                          ),
                        ),
                        const Spacer(),
                        const BookRating(),
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
