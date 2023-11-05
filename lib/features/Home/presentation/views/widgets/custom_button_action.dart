import 'package:bookly/core/utils/app_string.dart';
import 'package:bookly/core/utils/color_manager.dart';
import 'package:bookly/core/utils/value_manager.dart';
import 'package:bookly/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class CustomButtonAction extends StatelessWidget {
  const CustomButtonAction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: AppPadding.p8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: CustomButton(
              text: '19.99€',
              backgroundColor: ColorManager.whiteColor,
              textColor: ColorManager.blackColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
            ),
          ),
          Expanded(
            child: CustomButton(
              text: AppString.freePreview,
              backgroundColor: ColorManager.orangeColor,
              textColor: ColorManager.whiteColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
