import 'package:bookly/core/utils/color_manager.dart';
import 'package:bookly/core/utils/image_assets.dart';
import 'package:bookly/core/utils/value_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.sizeOf(context).width;
    double screenHeight = MediaQuery.sizeOf(context).height;
    return Column(
      children: [
        const CustomAppBar(),
        FeaturedBooksLitsView(screenHeight: screenHeight),
      ],
    );
  }
}

class FeaturedBooksLitsView extends StatelessWidget {
  const FeaturedBooksLitsView({
    super.key,
    required this.screenHeight,
  });

  final double screenHeight;

  @override
  Widget build(BuildContext context) {
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
              child: CustomListViewItem(),
            );
          },
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: AppPadding.p30,
        left: AppPadding.p30,
        top: AppPadding.p48,
        bottom: AppPadding.p30,
      ),
      child: Row(
        children: [
          SvgPicture.asset(Assets.imagesLogo),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(Assets.imagesIcSearch),
          ),
        ],
      ),
    );
  }
}

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        AspectRatio(
          aspectRatio: 2.7 / 4,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: const DecorationImage(
                image: NetworkImage(
                    'https://resizing.flixster.com/_5YUtL7vO7PzpnQ8uYYb40Hsa1k=/206x305/v2/https://resizing.flixster.com/-XZAfHZM39UwaGJIFWKAE8fS0ak=/v3/t/NowShowing/130620/130620_ab.jpg'),
              ),
            ),
          ),
        ),
        IconButton(
          icon: CircleAvatar(
            backgroundColor: ColorManager.greyColor.withOpacity(.2),
            child: SvgPicture.asset(
              Assets.imagesPlay,
            ),
          ),
          onPressed: () {},
        )
      ],
    );
  }
}
