import 'package:flutter/material.dart';

class MyImages extends StatelessWidget {
  final double imageWidth;
  final double? imageHeight;
  final double imageRadius;
  final String image;
  final BoxFit imageFit;

  const MyImages(
      {super.key,
        required this.imageWidth,
        this.imageHeight,
        required this.imageRadius,
        required this.image,
        required this.imageFit});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: imageWidth,
      height: imageHeight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(imageRadius),
        image: DecorationImage(
          image: AssetImage(image),
          fit: imageFit,
        ),
      ),
    );
  }
}
