import 'package:bookly/core/utils/color_manager.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ImageShimmer extends StatelessWidget {
  const ImageShimmer({
    super.key,
    required this.imageUrl,
    this.width,
    this.height,
    this.boxFit,
    this.radius,
  });

  final String imageUrl;
  final double? height;
  final double? width;
  final BoxFit? boxFit;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      height: height,
      width: width,
      fit: boxFit ?? BoxFit.fill,
      placeholder: (context, url) => Shimmer.fromColors(
        baseColor: Colors.grey[850]!,
        highlightColor: Colors.grey[800]!,
        child: Container(
          decoration: BoxDecoration(
            color: ColorManager.greyColor,
            borderRadius: BorderRadius.all(Radius.circular(radius ?? 0)),
          ),
        ),
      ),
      errorWidget: (context, url, error) => const Icon(Icons.error),
    );
  }
}
