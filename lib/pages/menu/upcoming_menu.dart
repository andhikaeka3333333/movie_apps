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
          "High Forces",
          "Coming Soon",
          "ACTION",
          "1h 55m",
          "images/highforces.jpg",
          "A mysterious message from Gao Haojun comes from ten thousand meters in the air. A five-star A380 ultra-luxury airliner was hijacked on its international maiden voyage, and international security expert Gao Haojun stood up to a group of thugs, his daughter Xiaojun was trapped in the cabin, and Mike, the leader of the hijackers.",
          ""),
      ModelMovie(
          "Joker: Folie à Deux",
          "Coming Soon",
          "CRIMINAL",
          "2h 18m",
          "images/joker.jpg",
          "Returning to her home planet, an infamous bounty hunter forms an unexpected alliance with a team of unlikely heroes. Together, they battle monsters and dangerous bandits to protect a young girl who holds the key to unimaginable power.",
          ""),
      ModelMovie(
          "Laura",
          "Coming Soon",
          "ROMANS",
          "1h 44m",
          "images/laura.jpg",
          "Laura, a talented influencer and beloved friend to many, struggles as she becomes paralyzed due to a horrific accident caused by her lover, Jojo. More devastatingly, Laura only discovers Jojo's true nature after she becomes helpless. Ultimately, she realizes that family will always be the only place to return to.",
          ""),
      ModelMovie(
          "Megalopolis",
          "Coming Soon",
          "ACTION",
          "2h 18m",
          "images/megalopolis.jpg",
          "Genius artist Cesar Catilina seeks to leap the City of New Rome into a utopian, idealistic future, while his opposition, Mayor Franklyn Cicero, remains committed to a regressive status quo, perpetuating greed, special interests, and partisan warfare. Torn between them is socialite Julia Cicero, the mayor’s daughter, whose love for Cesar has divided her loyalties, forcing her to discover what she truly believes humanity deserves.",
          ""),
      ModelMovie(
          "Sumala",
          "Coming Soon",
          "HORROR",
          "1h 53m",
          "images/sumala.jpg",
          "Unbeknownst to her husband Soedjiman, Sulastri made a pact with the devil so that she could have children. She gave birth to twins, Kumala who survived and Sumala who died. Kumala grew up to be a kind child but physically and mentally disabled. She often received bad treatment from the people around her. One day Sumala came from the world of the dead and made a reckoning with those who had hurt Kumala.",
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
      body: GridView.builder(
        itemCount: dataMovie.length,
        itemBuilder: (context, index) {
          return AdapterListMovie(modelMovie: dataMovie[index]);
        },
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.6,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        padding: const EdgeInsets.all(10.0),
      ),
    );
  }
}
