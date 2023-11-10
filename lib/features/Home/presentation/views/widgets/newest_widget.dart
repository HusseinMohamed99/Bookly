import 'package:bookly/core/utils/app_string.dart';
import 'package:bookly/core/utils/style_manager.dart';
import 'package:bookly/core/utils/value_manager.dart';
import 'package:flutter/material.dart';

class NewestText extends StatelessWidget {
  const NewestText({
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
        AppString.newest,
        style: StyleManager.textStyle18(),
      ),
    );
  }
}
