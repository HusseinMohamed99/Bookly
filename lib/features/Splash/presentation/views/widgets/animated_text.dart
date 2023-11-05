import 'package:bookly/core/utils/app_string.dart';
import 'package:bookly/core/utils/style_manager.dart';
import 'package:flutter/material.dart';

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: (context, _) {
        return SlideTransition(
          position: slidingAnimation,
          child: Text(
            AppString.splashTitle,
            textAlign: TextAlign.center,
            style: StyleManager.textStyle18(),
          ),
        );
      },
      animation: slidingAnimation,
    );
  }
}
