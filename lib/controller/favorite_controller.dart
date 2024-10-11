import 'package:get/get.dart';
import 'package:movie_apps/model/model_movie.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class FavoriteController extends GetxController {
  static Database? _db;
  var favoriteMovies = <ModelMovie>[].obs;

  Future<Database?> get db async {
    if (_db == null) {
      _db = await initDB();
    }
    return _db;
  }

  Future<Database> initDB() async {
    var databasePath = await getDatabasesPath();
    String path = join(databasePath, 'favorite_database.db');

    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE favorites(
            id INTEGER PRIMARY KEY AUTOINCREMENT, 
            title TEXT, 
            rating TEXT,
            genre TEXT,
            duration TEXT,
            image TEXT,
            description TEXT,
            imageHorizontal TEXT,
            isFavorite INTEGER
          )
        ''');
      },
    );
  }

  Future<int> addFavorite(ModelMovie movie) async {
    var dbClient = await db;
    int result = await dbClient!.insert('favorites', movie.toMap());
    loadFavorites();
    return result;
  }

  Future<void> loadFavorites() async {
    var dbClient = await db;
    List<Map<String, dynamic>> queryResult = await dbClient!.query('favorites');
    favoriteMovies.assignAll(
        queryResult.map((data) => ModelMovie.fromMap(data)).toList());
  }

  Future<void> removeFavorite(int id) async {
    var dbClient = await db;
    await dbClient!.delete('favorites', where: 'id = ?', whereArgs: [id]);
    loadFavorites();
  }
}
