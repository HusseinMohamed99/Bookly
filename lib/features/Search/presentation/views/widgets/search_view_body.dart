import 'package:bookly/core/utils/style_manager.dart';
import 'package:bookly/core/utils/value_manager.dart';
import 'package:bookly/features/Search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:bookly/features/Search/presentation/views/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.sizeOf(context).width;
    final double screenHeight = MediaQuery.sizeOf(context).height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppPadding.p30),
      child: CustomScrollView(slivers: [
        const SliverToBoxAdapter(
          child: CustomSearchTextField(),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: AppSize.s20,
          ),
        ),
        SliverToBoxAdapter(
          child: Text(
            'Search Result',
            style: StyleManager.textStyle18(),
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: AppSize.s20,
          ),
        ),
        SearchResultListView(
          screenWidth: screenWidth,
          screenHeight: screenHeight,
        ),
      ]),
    );
  }
}
