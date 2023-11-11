import 'package:bookly/core/utils/value_manager.dart';
import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/core/widgets/loading_indicator.dart';
import 'package:bookly/features/Home/presentation/view_model/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/features/Home/presentation/view_model/featured_books_cubit/featured_books_state.dart';
import 'package:bookly/features/Home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({
    super.key,
    required this.screenHeight,
  });

  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
        builder: (context, state) {
      if (state is FeaturedBooksLoaded) {
        return SizedBox(
          height: screenHeight * 0.3,
          child: Padding(
            padding: const EdgeInsets.only(left: AppPadding.p30),
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.only(right: AppPadding.p16),
                  child: CustomBookImage(),
                );
              },
            ),
          ),
        );
      } else if (state is FeaturedBooksError) {
        return CustomErrorWidget(errorMessage: state.message);
      } else {
        return const AdaptiveIndicator();
      }
    });
  }
}
