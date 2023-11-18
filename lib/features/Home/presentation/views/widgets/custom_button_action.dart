import 'package:bookly/core/utils/app_string.dart';
import 'package:bookly/core/utils/color_manager.dart';
import 'package:bookly/core/utils/constants.dart';
import 'package:bookly/core/utils/value_manager.dart';
import 'package:bookly/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class CustomButtonAction extends StatelessWidget {
  const CustomButtonAction({
    super.key,
    required this.previewLink,
  });
  final String previewLink;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppPadding.p8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: CustomButton(
              text: 'Free',
              backgroundColor: ColorManager.whiteColor,
              textColor: ColorManager.blackColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
              function: () {},
            ),
          ),
          Expanded(
            child: CustomButton(
              text: AppString.preview,
              backgroundColor: ColorManager.orangeColor,
              textColor: ColorManager.whiteColor,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
              function: () {
                urlLauncher(
                  Uri.parse(previewLink),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
