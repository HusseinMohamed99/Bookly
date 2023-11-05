import 'package:bookly/core/utils/style_manager.dart';
import 'package:bookly/core/utils/value_manager.dart';
import 'package:flutter/material.dart';

class BestSellerText extends StatelessWidget {
  const BestSellerText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: AppPadding.p30,
        top: AppPadding.p51,
        bottom: AppPadding.p20,
      ),
      child: Text(
        'Best Seller',
        style: StyleManager.textStyle18(),
      ),
    );
  }
}
