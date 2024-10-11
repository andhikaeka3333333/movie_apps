class ModelMovie {
  int? id;
  final String title;
  final String rating;
  final String genre;
  final String duration;
  final String image;
  final String description;
  final String imageHorizontal;
  bool isFavorite;

  ModelMovie({
    this.id,
    required this.title,
    required this.rating,
    required this.genre,
    required this.duration,
    required this.image,
    required this.description,
    required this.imageHorizontal,
    this.isFavorite = true,
  });


  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'rating': rating,
      'genre': genre,
      'duration': duration,
      'image': image,
      'description': description,
      'imageHorizontal': imageHorizontal,
      'isFavorite': isFavorite ? 1 : 0,
    };
  }

  factory ModelMovie.fromMap(Map<String, dynamic> map) {
    return ModelMovie(
      id: map['id'],
      title: map['title'],
      rating: map['rating'],
      genre: map['genre'],
      duration: map['duration'],
      image: map['image'],
      description: map['description'],
      imageHorizontal: map['imageHorizontal'],
      isFavorite: map['isFavorite'] == 1,
    );
  }
}
