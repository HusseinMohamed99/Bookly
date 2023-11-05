import 'package:bookly/core/utils/app_string.dart';
import 'package:bookly/core/utils/font_manager.dart';
import 'package:bookly/core/utils/style_manager.dart';
import 'package:bookly/core/utils/value_manager.dart';
import 'package:bookly/features/Home/presentation/views/widgets/similar_book_list_view.dart';
import 'package:flutter/material.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key, required this.screenHeight});
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppString.alsoLike,
          style: StyleManager.textStyle14(
            fontWeight: FontWeightManager.semiBold,
          ),
        ),
        const SizedBox(height: AppSize.s16),
        SimilarBooksListView(
          screenHeight: screenHeight,
        ),
      ],
    );
  }
}
