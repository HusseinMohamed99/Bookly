import 'package:bookly/core/utils/value_manager.dart';
import 'package:bookly/features/Home/presentation/views/widgets/books_view_details_section.dart';
import 'package:bookly/features/Home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly/features/Home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.sizeOf(context).width;
    final double screenHeight = MediaQuery.sizeOf(context).height;
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: AppPadding.p30),
                child: CustomBookDetailsAppBar(),
              ),
              BooksViewDetailsSection(screenWidth: screenWidth),
              const Expanded(child: SizedBox(height: AppSize.s50)),
              Padding(
                padding: const EdgeInsets.only(left: AppPadding.p30),
                child: SimilarBooksSection(screenHeight: screenHeight),
              ),
              const SizedBox(height: AppSize.s40),
            ],
          ),
        )
      ],
    );
  }
}
