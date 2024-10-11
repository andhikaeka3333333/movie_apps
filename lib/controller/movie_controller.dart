import 'package:get/get.dart';

import '../model/model_movie.dart';

class MovieController extends GetxController {
  final dataMovie = <ModelMovie>[
    ModelMovie(
      title: "Deadpool",
      rating: "8.0/10 IMDb",
      genre: "ACTION",
      duration: "2h 8m",
      image: "images/deadpool.jpg",
      description:
          "A jaded Wade Wilson is toiling away in civilian life with his days as the morally flexible mercenary Deadpool behind him. But when his home world faces an existential threat, Wade is forced to re-team with an even more reluctant Wolverine.",
      imageHorizontal: "",
    ),
    ModelMovie(
      title: "Border Lands",
      rating: "4.5/10 IMDb",
      genre: "ACTION",
      duration: "1h 41m",
      image: "images/borderlands.jpg",
      description:
          "Returning to her home planet, an infamous bounty hunter forms an unexpected alliance with a team of unlikely heroes. Together, they battle monsters and dangerous bandits to protect a young girl who holds the key to unimaginable power.",
      imageHorizontal: "",
    ),
    ModelMovie(
      title: "Inside Out 2",
      rating: "7.7/10 IMDb",
      genre: "ANIMATION",
      duration: "1h 47m",
      image: "images/insideout.jpg",
      description:
          "Teenager Riley's mind headquarters is undergoing a sudden demolition to make room for something entirely unexpected: new Emotions! Joy, Sadness, Anger, Fear and Disgust, who’ve long been running a successful operation by all accounts, aren’t sure how to feel when Anxiety shows up. And it looks like she’s not alone.",
      imageHorizontal: "",
    ),
    ModelMovie(
      title: "Rebel Ridge",
      rating: "6.9/10 IMDb",
      genre: "ACTION",
      duration: "1h 37m",
      image: "images/rebelridge.jpg",
      description:
          "A former Marine confronts corruption in a small town when local law enforcement seizes a bag containing money intended to pay his cousin's bail.",
      imageHorizontal: "",
    ),
    ModelMovie(
      title: "Despicable Me 4",
      rating: "6.2/10 IMDb",
      genre: "ANIMATION",
      duration: "1h 34m",
      image: "images/despicableme4.jpg",
      description:
          "Gru and Lucy and their girls—Margo, Edith and Agnes—welcome a new member to the Gru family, Gru Jr., who is intent on tormenting his dad. Gru also faces a new nemesis in Maxime Le Mal and his femme fatale girlfriend Valentina, forcing the family to go on the run.",
      imageHorizontal: "",
    ),
  ].obs;

  var filteredMovies = <ModelMovie>[].obs;

  @override
  void onInit() {
    super.onInit();
    filteredMovies.assignAll(dataMovie);
  }

  void filterMovies(String query) {
    if (query.isEmpty) {
      filteredMovies.assignAll(dataMovie);
    } else {
      filteredMovies.assignAll(
        dataMovie
            .where((movie) =>
                movie.title.toLowerCase().contains(query.toLowerCase()))
            .toList(),
      );
    }
  }
}
