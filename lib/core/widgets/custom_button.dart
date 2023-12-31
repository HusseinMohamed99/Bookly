import 'package:bookly/core/utils/style_manager.dart';
import 'package:bookly/core/utils/value_manager.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    this.borderRadius,
    required this.backgroundColor,
    required this.textColor,
    required this.function,
  });
  final String text;
  final BorderRadius? borderRadius;
  final Color backgroundColor;
  final Color textColor;
  final void Function()? function;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.s48,
      child: TextButton(
        onPressed: function,
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(12),
          ),
        ),
        child: Text(
          text,
          style: StyleManager.textStyle18(color: textColor),
        ),
      ),
    );
  }
}
