import 'package:bookly/core/utils/value_manager.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: const DecorationImage(
            image: NetworkImage(
                'https://resizing.flixster.com/_5YUtL7vO7PzpnQ8uYYb40Hsa1k=/206x305/v2/https://resizing.flixster.com/-XZAfHZM39UwaGJIFWKAE8fS0ak=/v3/t/NowShowing/130620/130620_ab.jpg'),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
