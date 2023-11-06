import 'package:bookly/core/utils/color_manager.dart';
import 'package:bookly/core/utils/image_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        enabledBorder: searchOutLineInputBorder(),
        focusedBorder: searchOutLineInputBorder(),
        hintText: 'Search',
        suffixIcon: Opacity(
          opacity: 0.6,
          child: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(Assets.imagesSearch),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder searchOutLineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: const BorderSide(color: ColorManager.greyColor),
    );
  }
}
