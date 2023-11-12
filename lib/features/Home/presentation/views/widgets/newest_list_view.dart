import 'package:bookly/core/utils/value_manager.dart';
import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/core/widgets/loading_indicator.dart';
import 'package:bookly/features/Home/presentation/view_model/newest_book_cubit/newest_book_cubit.dart';
import 'package:bookly/features/Home/presentation/view_model/newest_book_cubit/newest_book_state.dart';
import 'package:bookly/features/Home/presentation/views/widgets/books_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    return BlocBuilder<NewestBookCubit, NewestBookState>(
      builder: (context, state) {
        if (state is NewestBookSuccess) {
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
                    bookModel: state.books[index],
                  ),
                  // child: Text(''),
                );
              },
              childCount: state.books.length,
            ),
          );
        } else if (state is NewestBookFailure) {
          return SliverFillRemaining(
            hasScrollBody: false,
            child: CustomErrorWidget(errorMessage: state.message),
          );
        } else {
          return const SliverFillRemaining(
            hasScrollBody: false,
            child: AdaptiveIndicator(),
          );
        }
      },
    );
  }
}
