import 'package:bookly/core/utils/value_manager.dart';
import 'package:bookly/features/Home/presentation/views/widgets/books_list_view_item.dart';
import 'package:flutter/material.dart';

class NewestListView extends StatelessWidget {
  const NewestListView({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Padding(
            padding: const EdgeInsets.only(
              left: AppPadding.p30,
              right: AppPadding.p48,
              bottom: AppPadding.p20,
            ),
            child: BooksListViewItem(
              screenWidth: screenWidth,
              screenHeight: screenHeight,
            ),
          );
        },
        childCount: 10,
      ),
    );
  }
}
