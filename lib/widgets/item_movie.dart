import 'package:flutter/material.dart';
import 'package:movie_apps/widgets/main_button.dart';
import 'package:movie_apps/widgets/my_images.dart';

class ItemMovie extends StatelessWidget {
  final double containerMargin;
  final Color containerColor;
  final double containerRadius;
  final double padding;
  final double imageWidth;
  final double imageHeight;
  final double imageRadius;
  final String image;
  final BoxFit imageFit;
  final double marginTop;
  final double marginLeft;
  final CrossAxisAlignment crossAxisAlignment;
  final String title;
  final double titleFontSize;
  final FontWeight titleFontWeight;
  final String font;
  final double marginRating;
  final double ratingFontSize;
  final String rating;
  final double iconSize;
  final IconData iconRating;
  final Color ratingIconColor;
  final String genre;
  final Color genreTextColor;
  final double genreFontSize;
  final FontWeight genreFontWeight;
  final Color genreBackgroundColor;
  final double genreWidth;
  final double genreHeight;
  final double genreHorizontalPadding;
  final double genreVerticalPadding;
  final double genreRadius;
  final IconData durationIcon;
  final String duration;
  final double spaceDuration;
  final IconData iconAction;
  final Color iconActionColor;
  final void Function() onTap;
  final void Function() onPressed;

  const ItemMovie(
      {super.key,
      required this.containerMargin,
      required this.containerColor,
      required this.containerRadius,
      required this.padding,
      required this.imageWidth,
      required this.imageHeight,
      required this.imageRadius,
      required this.image,
      required this.imageFit,
      required this.marginTop,
      required this.marginLeft,
      required this.crossAxisAlignment,
      required this.title,
      required this.titleFontSize,
      required this.titleFontWeight,
      required this.font,
      required this.marginRating,
      required this.ratingFontSize,
      required this.rating,
      required this.iconSize,
      required this.ratingIconColor,
      required this.genre,
      required this.genreTextColor,
      required this.genreFontSize,
      required this.genreFontWeight,
      required this.genreBackgroundColor,
      required this.genreWidth,
      required this.genreHeight,
      required this.genreHorizontalPadding,
      required this.genreVerticalPadding,
      required this.genreRadius,
      required this.durationIcon,
      required this.duration,
      required this.spaceDuration,
      required this.onTap,
      required this.iconRating,
      required this.onPressed, required this.iconAction, required this.iconActionColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(containerMargin),
        child: Container(
          padding: EdgeInsets.all(padding),
          //height: containerHeight,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(containerRadius),
            color: containerColor,
          ),
          child: Column(
            children: [
              MyImages(
                  imageHeight: imageHeight,
                  imageRadius: BorderRadius.only(
                      topLeft: Radius.circular(imageRadius),
                      topRight: Radius.circular(imageRadius)),
                  image: image,
                  imageFit: imageFit),
              Container(
                margin: EdgeInsets.only(top: marginTop, left: marginLeft),
                child: Column(
                  crossAxisAlignment: crossAxisAlignment,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                          fontSize: titleFontSize,
                          fontWeight: titleFontWeight,
                          fontFamily: font),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: marginRating),
                      child: Row(children: [
                        Icon(
                          iconRating,
                          size: iconSize,
                          color: ratingIconColor,
                        ),
                        Text(
                          rating,
                          style: TextStyle(
                              fontSize: ratingFontSize,
                              color: Color(0xff9c9c9c),
                              fontFamily: font),
                        )
                      ]),
                    ),
                    MainButton(
                      textButton: genre,
                      textColor: genreTextColor,
                      fontSize: genreFontSize,
                      fontWeight: genreFontWeight,
                      font: font,
                      buttonBackgroundColor: genreBackgroundColor,
                      buttonWidth: genreWidth,
                      buttonHeight: genreHeight,
                      buttonHorizontalPadding: genreHorizontalPadding,
                      buttonVerticalPadding: genreVerticalPadding,
                      buttonRadius: genreRadius,
                      onPresssed: () {},
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              durationIcon,
                              size: iconSize,
                            ),
                            SizedBox(
                              width: spaceDuration,
                            ),
                            Text(
                              duration,
                              style: TextStyle(fontFamily: font),
                            )
                          ],
                        ),
                        IconButton(
                          onPressed: () {
                            onPressed();
                          },
                          icon: Icon(iconAction),
                          color: iconActionColor,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
