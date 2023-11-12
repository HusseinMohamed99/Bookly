import 'package:bookly/core/utils/value_manager.dart';
import 'package:flutter/material.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({
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
          return const Padding(
            padding: EdgeInsets.only(
              bottom: AppPadding.p20,
            ),
            // child: BooksListViewItem(
            //   screenWidth: screenWidth,
            //   screenHeight: screenHeight,
            // ),
            child: Text('data'),
          );
        },
        childCount: 10,
      ),
    );
  }
}
