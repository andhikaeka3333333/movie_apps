import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../component_pages/adapter_list_movie.dart';
import '../../controller/movie_controller.dart';
import '../../widgets/colors.dart';
import '../../widgets/my_search_bar.dart';

class PopularMenu extends StatelessWidget {
  PopularMenu({super.key});

  final MovieController movieController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        title: Row(
          children: [
            Text(
              "Popular",
              style: TextStyle(
                fontFamily: 'Mulish',
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(width: 70),
            MySearchBar(
              searchBarHeight: 35,
              shadowColor: colorTransparent,
              iconSearchBar: Icons.search,
              searchBarBackground: backgroundSearchBar,
              searchBarHint: 'Search...',
              searchBarhorizontalPadding: 10,
              onChanged: (query) => movieController.filterMovies(query),
            )
          ],
        ),
        backgroundColor: Colors.white,
      ),
      body: Obx(() {
        return GridView.builder(

          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: (Get.width / 1000),
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,

          ),
          itemCount: movieController.filteredMovies.length,
          itemBuilder: (context, index) {
            return AdapterListMovie(
                modelMovie: movieController.filteredMovies[index],
              );
          },
          padding: const EdgeInsets.all(5.0),
        );
      }),
    );
  }
}
