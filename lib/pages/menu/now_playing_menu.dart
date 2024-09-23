import 'package:flutter/material.dart';

import '../../component_pages/adapter_list_movie.dart';
import '../../component_pages/adapter_list_movie_horizontal.dart';
import '../../model/model_movie.dart';

class NowPlayingMenu extends StatelessWidget {
  const NowPlayingMenu({super.key});

  @override
  Widget build(BuildContext context) {
    List<ModelMovie> dataMovie = [
      ModelMovie(
          "Speak No Evil",
          "7.2/10 IMDb",
          "THRILLER",
          "1h 50m",
          "images/speaknoevil.jpg",
          "When an American family is invited to spend the weekend at the idyllic country estate of a charming British family they befriended on vacation, what begins as a dream holiday soon warps into a snarled psychological nightmare.",
          ""),
      ModelMovie(
          "Harold And The Purple Crayon",
          "5.7/10 IMDb",
          "ADVENTURE",
          "1h 30m",
          "images/harold.jpg",
          "Inside of his book, adventurous Harold can make anything come to life simply by drawing it. After he grows up and draws himself off the book's pages and into the physical world, Harold finds he has a lot to learn about real life.",
          ""),
      ModelMovie(
          "Cinderella's Curse",
          "3.3/10 IMDb",
          "HORROR",
          "1h 22m",
          "images/cinderellacurse.jpg",
          "Desperate Cinderella summons her fairy godmother from an ancient flesh-bound book, seeking revenge on her evil stepmother and stepsisters who abuse and torment her daily.",
          ""),
      ModelMovie(
          "The Wild Robot",
          "8.2/10 IMDb",
          "ANIMATION",
          "1h 42m",
          "images/wildrobot.jpg",
          "After a shipwreck, an intelligent robot called Roz is stranded on an uninhabited island. To survive the harsh environment, Roz bonds with the island's animals and cares for an orphaned baby goose.",
          ""),
    ];

    List<ModelMovie> dataMovieHorizontal = [
      ModelMovie(
          "Alien Romulus",
          "7.4/10 IMDb",
          "ACTION",
          "1h 59m",
          "images/alien.jpg",
          "While scavenging the deep ends of a derelict space station, a group of young space colonizers come face to face with the most terrifying life form in the universe.",
          "images/alienromulusbanner.webp"),
      ModelMovie(
          "Bettlejuice Bettlejuice",
          "7.0/10 IMDb",
          "HORROR COMEDY",
          "1h 45m",
          "images/bettlejuice.jpg",
          "After a family tragedy, three generations of the Deetz family return home to Winter River. Still haunted by Beetlejuice, Lydia's life is turned upside down when her teenage daughter, Astrid, accidentally opens the portal to the Afterlife.",
          "images/bettlejuicebanner.webp"),
      ModelMovie(
          "It End With Us",
          "6.7/10 IMDb",
          "ROMANS",
          "2h 11m",
          "images/itendwithus.jpg",
          "When a woman's first love suddenly reenters her life, her relationship with a charming, but abusive neurosurgeon is upended, and she realizes she must learn to rely on her own strength to make an impossible choice for her future.",
          "images/itendwithusbanner.webp"),
      ModelMovie(
          "Transformer One",
          "7.9/10 IMDb",
          "ACTION",
          "1h 44m",
          "images/transformer.jpg",
          "The untold origin story of Optimus Prime and Megatron, better known as sworn enemies, but once were friends bonded like brothers who changed the fate of Cybertron forever.",
          "images/trans.webp"),
      ModelMovie(
          "The Goon",
          "4.7/10 IMDb",
          "ACTION",
          "1h 51m",
          "images/thegoon.jpg",
          "Soulmates Eric and Shelly are brutally murdered when the demons of her dark past catch up with them. Given the chance to save his true love by sacrificing himself, Eric sets out to seek merciless revenge on their killers, traversing the worlds of the living and the dead to put the wrong things right.",
          "images/thegoonbanner.webp"),
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
            child: ListView.builder(
              itemCount: dataMovie.length,
              itemBuilder: (context, index) {
                return AdapterListMovie(modelMovie: dataMovie[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
