import 'package:flutter/material.dart';

class ItemMovieHorizontal extends StatelessWidget {
  final String title;
  final String imagePath;
  final String duration;
  final String imdbRating;
  final double containerHeight;
  final double containerWidth;
  final double borderRadiusValue;
  final double paddingValue;
  final double fontSizeTitle;
  final double fontSizeRating;
  final double fontSizeDuration;
  final double iconSize;
  final double spacingBetweenItems;
  final Color containerColor;
  final Color titleColor;
  final Color imdbRatingColor;
  final IconData timeIcon;
  final IconData ratingIcon;
  final Color timeIconColor;
  final Color ratingIconColor;
  final String fontFamily;
  final MainAxisAlignment mainAxisAlignment;
  final double imageWidth;
  final BoxFit imageFit;
  final void Function() onTap;

  const ItemMovieHorizontal({
    required this.title,
    required this.imagePath,
    required this.duration,
    required this.imdbRating,
    required this.containerHeight,
    required this.containerWidth,
    required this.borderRadiusValue,
    required this.paddingValue,
    required this.fontSizeTitle,
    required this.fontSizeRating,
    required this.iconSize,
    required this.spacingBetweenItems,
    required this.containerColor,
    required this.titleColor,
    required this.imdbRatingColor,
    required this.timeIcon,
    required this.ratingIcon,
    required this.timeIconColor,
    required this.ratingIconColor,
    required this.fontFamily,
    required this.mainAxisAlignment,
    required this.imageWidth,
    required this.imageFit,
    required this.fontSizeDuration,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: containerHeight,
        width: containerWidth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadiusValue),
          color: containerColor,
        ),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(borderRadiusValue),
                  topRight: Radius.circular(borderRadiusValue),
                ),
                child: Image.asset(
                  imagePath,
                  width: imageWidth,
                  fit: imageFit,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(paddingValue),
              child: Row(
                mainAxisAlignment: mainAxisAlignment,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontFamily: fontFamily,
                          fontSize: fontSizeTitle,
                          fontWeight: FontWeight.bold,
                          color: titleColor,
                        ),
                      ),
                      Text("Recommended for you")
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Icon(
                            timeIcon,
                            size: iconSize,
                            color: timeIconColor,
                          ),
                          SizedBox(width: spacingBetweenItems),
                          Text(
                            duration,
                            style: TextStyle(
                              fontFamily: fontFamily,
                              fontSize: fontSizeDuration,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            ratingIcon,
                            size: iconSize,
                            color: ratingIconColor,
                          ),
                          SizedBox(width: spacingBetweenItems),
                          Text(
                            imdbRating,
                            style: TextStyle(
                              fontFamily: fontFamily,
                              fontSize: fontSizeRating,
                              color: imdbRatingColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
