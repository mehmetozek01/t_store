import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:cached_network_image/cached_network_image.dart';

class TRoundedImage extends StatelessWidget {
  const TRoundedImage({
    super.key,
    this.border,
    this.padding,
    this.onPressed,
    this.width,
    this.height,
    this.applImageRadius = true,
    required this.imageUrl,
    this.fit = BoxFit.contain,
    this.bacgroundColor,
    this.isNetworkImage = false,
    this.bordeRadius = TSizes.md,
  });

  final double? width, height;
  final String imageUrl;
  final bool applImageRadius;
  final BoxBorder? border;
  final Color? bacgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final double bordeRadius;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          border: border,
          color: bacgroundColor,
          borderRadius: BorderRadius.circular(bordeRadius),
        ),
        child: ClipRRect(
          borderRadius: applImageRadius
              ? BorderRadius.circular(bordeRadius)
              : BorderRadius.zero,
          child: isNetworkImage
              ? CachedNetworkImage(
                  imageUrl: imageUrl,
                  fit: fit,
                  placeholder: (context, url) =>
                      const Center(child: CircularProgressIndicator()),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                )
              : Image(image: AssetImage(imageUrl), fit: fit),
        ),
      ),
    );
  }
}
