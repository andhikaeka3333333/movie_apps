import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../component_pages/adapter_list_movie.dart';
import '../../component_pages/adapter_list_movie_horizontal.dart';
import '../../model/model_movie.dart';

class NowPlayingMenu extends StatelessWidget {
  const NowPlayingMenu({super.key});

  @override
  Widget build(BuildContext context) {
    List<ModelMovie> dataMovie = [
      ModelMovie(
        title: "Speak No Evil",
        rating: "7.2/10 IMDb",
        genre: "THRILLER",
        duration: "1h 50m",
        image: "images/speaknoevil.jpg",
        description:
            "When an American family is invited to spend the weekend at the idyllic country estate of a charming British family they befriended on vacation, what begins as a dream holiday soon warps into a snarled psychological nightmare.",
        imageHorizontal: "",
      ),
      ModelMovie(
        title: "Harold",
        rating: "5.7/10 IMDb",
        genre: "ADVENTURE",
        duration: "1h 30m",
        image: "images/harold.jpg",
        description:
            "Inside of his book, adventurous Harold can make anything come to life simply by drawing it. After he grows up and draws himself off the book's pages and into the physical world, Harold finds he has a lot to learn about real life.",
        imageHorizontal: "",
      ),
      ModelMovie(
        title: "Cinderella's Curse",
        rating: "3.3/10 IMDb",
        genre: "HORROR",
        duration: "1h 22m",
        image: "images/cinderellacurse.jpg",
        description:
            "Desperate Cinderella summons her fairy godmother from an ancient flesh-bound book, seeking revenge on her evil stepmother and stepsisters who abuse and torment her daily.",
        imageHorizontal: "",
      ),
      ModelMovie(
        title: "The Wild Robot",
        rating: "8.2/10 IMDb",
        genre: "ANIMATION",
        duration: "1h 42m",
        image: "images/wildrobot.jpg",
        description:
            "After a shipwreck, an intelligent robot called Roz is stranded on an uninhabited island. To survive the harsh environment, Roz bonds with the island's animals and cares for an orphaned baby goose.",
        imageHorizontal: "",
      ),
    ];

    List<ModelMovie> dataMovieHorizontal = [
      ModelMovie(
        title: "Alien Romulus",
        rating: "7.4/10 IMDb",
        genre: "ACTION",
        duration: "1h 59m",
        image: "images/alien.jpg",
        description:
            "While scavenging the deep ends of a derelict space station, a group of young space colonizers come face to face with the most terrifying life form in the universe.",
        imageHorizontal: "images/alienromulusbanner.webp",
      ),
      ModelMovie(
        title: "Bettlejuice Bettlejuice",
        rating: "7.0/10 IMDb",
        genre: "HORROR COMEDY",
        duration: "1h 45m",
        image: "images/bettlejuice.jpg",
        description:
            "After a family tragedy, three generations of the Deetz family return home to Winter River. Still haunted by Beetlejuice, Lydia's life is turned upside down when her teenage daughter, Astrid, accidentally opens the portal to the Afterlife.",
        imageHorizontal: "images/bettlejuicebanner.webp",
      ),
      ModelMovie(
        title: "It Ends With Us",
        rating: "6.7/10 IMDb",
        genre: "ROMANCE",
        duration: "2h 11m",
        image: "images/itendwithus.jpg",
        description:
            "When a woman's first love suddenly reenters her life, her relationship with a charming, but abusive neurosurgeon is upended, and she realizes she must learn to rely on her own strength to make an impossible choice for her future.",
        imageHorizontal: "images/itendwithusbanner.webp",
      ),
      ModelMovie(
        title: "Transformer One",
        rating: "7.9/10 IMDb",
        genre: "ACTION",
        duration: "1h 44m",
        image: "images/transformer.jpg",
        description:
            "The untold origin story of Optimus Prime and Megatron, better known as sworn enemies, but once were friends bonded like brothers who changed the fate of Cybertron forever.",
        imageHorizontal: "images/trans.webp",
      ),
      ModelMovie(
        title: "The Goon",
        rating: "4.7/10 IMDb",
        genre: "ACTION",
        duration: "1h 51m",
        image: "images/thegoon.jpg",
        description:
            "Soulmates Eric and Shelly are brutally murdered when the demons of her dark past catch up with them. Given the chance to save his true love by sacrificing himself, Eric sets out to seek merciless revenge on their killers, traversing the worlds of the living and the dead to put the wrong things right.",
        imageHorizontal: "images/thegoonbanner.webp",
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        title: Text(
          "Now Playing",
          style: TextStyle(fontFamily: 'Mulish', fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Container(
              height: 200,
              color: Color(0xfffff9e6),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: dataMovieHorizontal.length,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        AdapterListMovieHorizontal(
                            modelMovie: dataMovieHorizontal[index]),
                        SizedBox(width: 42),
                      ],
                    );
                  },
                ),
              )),
          Expanded(
            child: GridView.builder(
              itemCount: dataMovie.length,
              itemBuilder: (context, index) {
                return AdapterListMovie(modelMovie: dataMovie[index]);
              },
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: (Get.width / 1000),
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
