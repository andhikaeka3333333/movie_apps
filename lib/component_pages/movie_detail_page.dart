import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/favorite_controller.dart';
import '../model/model_movie.dart';
import '../widgets/colors.dart';
import '../widgets/main_button.dart';
import '../widgets/my_images.dart';

class MovieDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ModelMovie movie = Get.arguments as ModelMovie;
    final FavoriteController favoriteController = Get.find();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyImages(
                  imageWidth: 190,
                  imageHeight: 290,
                  imageRadius: BorderRadius.circular(20),
                  image: movie.image,
                  imageFit: BoxFit.cover),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    movie.title,
                    style: TextStyle(
                      fontFamily: 'Mulish',
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: blackColor,
                    ),
                  ),
                  IconButton(
                      color: favoriteColor,
                      onPressed: () {
                        ModelMovie favoriteMovie = ModelMovie(
                          title: movie.title,
                          rating: movie.rating,
                          genre: movie.genre,
                          duration: movie.duration,
                          image: movie.image,
                          description: movie.description,
                          imageHorizontal: movie.imageHorizontal,
                        );

                        favoriteController.addFavorite(favoriteMovie);
                      },
                      icon: Icon(Icons.favorite))
                ],
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  Icon(Icons.star, color: primaryColor, size: 18),
                  SizedBox(width: 5),
                  Text(
                    movie.rating,
                    style: TextStyle(
                        fontSize: 16, color: blackColor, fontFamily: 'Mulish'),
                  ),
                ],
              ),
              SizedBox(height: 10),
              MainButton(
                  textButton: movie.genre,
                  textColor: buttonTextColor,
                  fontSize: 10.0,
                  fontWeight: FontWeight.bold,
                  font: 'Mulish',
                  buttonBackgroundColor: buttonBackgroundColor,
                  buttonWidth: 75.0,
                  buttonHeight: 24.0,
                  buttonHorizontalPadding: 12.0,
                  buttonVerticalPadding: 4.0,
                  buttonRadius: 20,
                  onPresssed: () {}),
              SizedBox(height: 8),
              Text(
                'Length',
                style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff9c9c9c),
                    fontFamily: 'Mulish'),
              ),
              Text(
                movie.duration,
                style: TextStyle(
                    fontSize: 14, color: blackColor, fontFamily: 'Mulish'),
              ),
              SizedBox(height: 20),
              Text(
                'Description',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff110e47),
                    fontFamily: 'Mulish'),
              ),
              SizedBox(height: 8),
              Text(
                movie.description,
                style: TextStyle(
                    fontSize: 16,
                    color: Color(0xff9c9c9c),
                    fontFamily: 'Mulish'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
