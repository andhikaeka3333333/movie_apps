import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/favorite_controller.dart';
import '../model/model_movie.dart';
import '../widgets/colors.dart';
import '../widgets/item_movie.dart';

class AdapterListMovie extends StatelessWidget {
  final FavoriteController favoriteController = Get.find();
  final ModelMovie modelMovie;

  AdapterListMovie({super.key, required this.modelMovie});

  @override
  Widget build(BuildContext context) {
    return ItemMovie(
      containerMargin: 15.0,
      containerColor: containerColor,
      containerRadius: 15.0,
      padding: 0.0,
      imageWidth: 92.0,
      imageHeight: 280.0,
      imageRadius: 8.0,
      image: modelMovie.image,
      imageFit: BoxFit.cover,
      marginTop: 10.0,
      marginLeft: 12.0,
      crossAxisAlignment: CrossAxisAlignment.start,
      title: modelMovie.title,
      titleFontSize: 16.0,
      titleFontWeight: FontWeight.bold,
      font: 'Mulish',
      marginRating: 2,
      ratingFontSize: 14.0,
      rating: modelMovie.rating,
      iconSize: 15.0,
      ratingIconColor: primaryColor,
      genre: modelMovie.genre,
      genreTextColor: buttonTextColor,
      genreFontSize: 10.0,
      genreFontWeight: FontWeight.bold,
      genreBackgroundColor: buttonBackgroundColor,
      genreWidth: 75.0,
      genreHeight: 24.0,
      genreHorizontalPadding: 12.0,
      genreVerticalPadding: 4.0,
      genreRadius: 20.0,
      durationIcon: Icons.access_time,
      duration: modelMovie.duration,
      spaceDuration: 5.0,
      iconRating: Icons.star,
      iconAction: Icons.favorite,
      onTap: () {
        Get.toNamed('/movie-detail', arguments: modelMovie);
      },
      onPressed: () {
        ModelMovie favoriteMovie = ModelMovie(
          title: modelMovie.title,
          rating: modelMovie.rating,
          genre: modelMovie.genre,
          duration: modelMovie.duration,
          image: modelMovie.image,
          description: modelMovie.description,
          imageHorizontal: modelMovie.imageHorizontal,
        );

        favoriteController.addFavorite(favoriteMovie);
      }, iconActionColor: favoriteColor,
    );
  }
}
