// lib/pages/favorite_page.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_apps/component_pages/adapter_favorite.dart';
import 'package:movie_apps/widgets/colors.dart';
import '../../controller/favorite_controller.dart';

class FavoritePage extends StatelessWidget {
  final FavoriteController favoriteController = Get.find();

  @override
  Widget build(BuildContext context) {
    favoriteController.loadFavorites();

    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        surfaceTintColor: Colors.transparent,
        title: Text('Favorite Movies'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Obx(() {
              if (favoriteController.favoriteMovies.isEmpty) {
                return Center(
                  child: Text(
                    'Belum ada film yang anda sukai 🤷‍♂️',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, fontFamily: 'Mulish'),
                  ),
                );
              } else {
                return GridView.builder(
                  itemCount: favoriteController.favoriteMovies.length,
                  itemBuilder: (context, index) {
                    final movie = favoriteController.favoriteMovies[index];
                    return AdapterFavorite(
                      modelMovie: movie,
                    );
                  },
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: (Get.width / 1000),
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                  ),
                );
              }
            }),
          ),
        ],
      ),
    );
  }
}
