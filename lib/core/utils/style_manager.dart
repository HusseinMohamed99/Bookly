import 'package:bookly/core/utils/font_manager.dart';
import 'package:flutter/material.dart';

class StyleManager {
  static textStyle14({Color? color, FontWeight? fontWeight}) => TextStyle(
        fontSize: FontSize.s14,
        fontWeight: fontWeight ?? FontWeightManager.regular,
        fontFamily: FontConstant.fontFamily,
        color: color,
      );
  static textStyle16({FontWeight? fontWeight}) => TextStyle(
        fontSize: FontSize.s16,
        fontWeight: fontWeight ?? FontWeightManager.medium,
        fontFamily: FontConstant.fontFamily,
      );
  static textStyle18({FontWeight? fontWeight}) => TextStyle(
        fontSize: FontSize.s18,
        fontWeight: fontWeight ?? FontWeightManager.semiBold,
        fontFamily: FontConstant.fontFamily,
      );
  static textStyle20({String? fontFamily, FontWeight? fontWeight}) => TextStyle(
        fontSize: FontSize.s20,
        fontWeight: fontWeight ?? FontWeightManager.regular,
        fontFamily: fontFamily ?? FontConstant.fontFamily,
      );
  static textStyle30({FontWeight? fontWeight}) => TextStyle(
        fontSize: FontSize.s30,
        fontWeight: fontWeight ?? FontWeightManager.regular,
        fontFamily: FontConstant.sectraFamily,
      );
}
