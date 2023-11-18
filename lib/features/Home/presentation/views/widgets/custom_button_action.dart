import 'package:bookly/core/utils/app_string.dart';
import 'package:bookly/core/utils/color_manager.dart';
import 'package:bookly/core/utils/constants.dart';
import 'package:bookly/core/utils/value_manager.dart';
import 'package:bookly/core/widgets/custom_button.dart';
import 'package:bookly/features/Home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

class CustomButtonAction extends StatelessWidget {
  const CustomButtonAction({
    super.key,
    required this.bookModel,
  });
  final BookModel bookModel;
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
              text: getText(bookModel),
              backgroundColor: ColorManager.orangeColor,
              textColor: ColorManager.whiteColor,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
              function: () {
                urlLauncher(context, bookModel.volumeInfo.previewLink!);
              },
            ),
          ),
        ],
      ),
    );
  }

  String getText(BookModel bookModel) {
    if (bookModel.volumeInfo.previewLink == null) {
      return AppString.notAvailable;
    } else {
      return AppString.preview;
    }
  }
}
