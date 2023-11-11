import 'package:bookly/core/utils/color_manager.dart';
import 'package:flutter/material.dart';

class AdaptiveIndicator extends StatelessWidget {
  const AdaptiveIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator.adaptive(
        backgroundColor: ColorManager.greyColor,
        valueColor: AlwaysStoppedAnimation<Color>(ColorManager.whiteColor),
        strokeWidth: 6,
      ),
    );
  }
}
