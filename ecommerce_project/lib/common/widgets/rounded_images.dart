import 'package:flutter/material.dart';

class RoundedImage extends StatelessWidget {
  const RoundedImage({
    super.key,
    this.width,
    this.height,
    required this.imageUrl,
    required this.applyImageRadius,
    this.border,
    this.backgroundColor,
    this.fit,
    this.padding,
    this.onTap,
    this.borderRadius,
  });

  final double? width, height;
  final String imageUrl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color? backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final VoidCallback? onTap;
  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        padding: padding,
        decoration: BoxDecoration(
            border: border,
            color: backgroundColor,
            borderRadius: BorderRadius.circular(15)),
        child: ClipRRect(
          borderRadius:
              applyImageRadius ? BorderRadius.circular(15) : BorderRadius.zero,
          child: Image.network(
            imageUrl,
            fit: fit,
          ),
        ),
      ),
    );
  }
}
