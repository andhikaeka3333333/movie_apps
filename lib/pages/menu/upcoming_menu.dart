import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../component_pages/adapter_list_movie.dart';
import '../../controller/movie_controller.dart';
import '../../model/model_movie.dart';
import '../../widgets/colors.dart';
import '../../widgets/my_search_bar.dart';

class UpcomingMenu extends StatelessWidget {
  UpcomingMenu({super.key});

  final MovieController movieController = Get.put(MovieController());

  @override
  Widget build(BuildContext context) {
    List<ModelMovie> dataMovie = [
      ModelMovie(
          "Deadpool Wolverine",
          "6.4/10 IMDb",
          "ACTION",
          "2h 8m",
          "images/deadpool.jpg",
          "A jaded Wade Wilson is toiling away in civilian life with his days as the morally flexible mercenary Deadpool behind him. But when his home world faces an existential threat, Wade is forced to re-team with an even more reluctant Wolverine.",
          ""),
      ModelMovie(
          "Border Lands",
          "6.4/10 IMDb",
          "ACTION",
          "1h 41m",
          "images/borderlands.jpg",
          "Returning to her home planet, an infamous bounty hunter forms an unexpected alliance with a team of unlikely heroes. Together, they battle monsters and dangerous bandits to protect a young girl who holds the key to unimaginable power.",
          ""),
      ModelMovie(
          "Inside Out 2",
          "6.4/10 IMDb",
          "ANIMATION",
          "1h 47m",
          "images/insideout.jpg",
          "Teenager Riley's mind headquarters is undergoing a sudden demolition to make room for something entirely unexpected: new Emotions! Joy, Sadness, Anger, Fear and Disgust, who’ve long been running a successful operation by all accounts, aren’t sure how to feel when Anxiety shows up. And it looks like she’s not alone.",
          ""),
      ModelMovie(
          "Rebel Ridge",
          "6.4/10 IMDb",
          "ACTION",
          "1h 37m",
          "images/rebelridge.jpg",
          "A former Marine confronts corruption in a small town when local law enforcement seizes a bag containing money intended to pay his cousin's bail.",
          ""),
      ModelMovie(
          "Despicable Me 4",
          "6.4/10 IMDb",
          "ANIMATION",
          "1h 34m",
          "images/despicableme4.jpg",
          "Gru and Lucy and their girls—Margo, Edith and Agnes—welcome a new member to the Gru family, Gru Jr., who is intent on tormenting his dad. Gru also faces a new nemesis in Maxime Le Mal and his femme fatale girlfriend Valentina, forcing the family to go on the run.",
          ""),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        title: Text(
          "Upcoming",
          style: TextStyle(fontFamily: 'Mulish', fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: dataMovie.length,
        itemBuilder: (context, index) {
          return AdapterListMovie(modelMovie: dataMovie[index]);
        },
      ),
    );
  }
}
