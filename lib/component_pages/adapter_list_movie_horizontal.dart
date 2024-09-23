import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../model/model_movie.dart';
import '../widgets/colors.dart';
import '../widgets/item_movie_horizontal.dart';

class AdapterListMovieHorizontal extends StatelessWidget {
  final ModelMovie modelMovie;

  const AdapterListMovieHorizontal({super.key, required this.modelMovie});

  @override
  Widget build(BuildContext context) {
    return ItemMovieHorizontal(
      containerHeight: 200.0,
      containerWidth: 300.0,
      borderRadiusValue: 20.0,
      containerColor: containerColorHorizontal,
      imagePath: modelMovie.imageHorizontal,
      imageWidth: double.infinity,
      imageFit: BoxFit.cover,
      paddingValue: 12.0,
      title: modelMovie.title,
      fontSizeTitle: 16.0,
      duration: modelMovie.duration,
      iconSize: 15.0,
      timeIcon: Icons.access_time,
      imdbRating: modelMovie.rating,
      ratingIcon: Icons.star,
      ratingIconColor: primaryColor,
      fontSizeRating: 14.0,
      fontFamily: 'Mulish',
      imdbRatingColor: blackColor,
      spacingBetweenItems: 5.0,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      titleColor: blackColor,
      timeIconColor: blackColor,
      fontSizeDuration: 12,
      onTap: () {
        Get.toNamed('/movie-detail', arguments: modelMovie);
      },
    );
  }
}
