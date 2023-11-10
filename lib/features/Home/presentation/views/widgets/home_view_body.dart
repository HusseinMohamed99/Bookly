import 'package:bookly/features/Home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/features/Home/presentation/views/widgets/featured_book_list_view.dart';
import 'package:bookly/features/Home/presentation/views/widgets/newest_list_view.dart';
import 'package:bookly/features/Home/presentation/views/widgets/newest_widget.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.sizeOf(context).height;
    double screenWidth = MediaQuery.sizeOf(context).width;
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBar(),
              FeaturedBooksListView(screenHeight: screenHeight),
              const NewestText(),
            ],
          ),
        ),
        NewestListView(
          screenWidth: screenWidth,
          screenHeight: screenHeight,
        ),
      ],
    );
  }
}
