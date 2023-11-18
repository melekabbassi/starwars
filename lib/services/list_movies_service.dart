import 'package:starwars/models/list_movies_model.dart';
import 'package:http/http.dart' as http;

class MovieSevice {
  static String moviesUri =
      'https://run.mocky.io/v3/fc019068-f27e-48dc-a941-d5acec6d97a9';

  static Future<ListFilms> getFilms() async {
    final response = await http.get(Uri.parse(moviesUri));

    if (response.statusCode == 200) {
      final result = response.body;
      final movies = listFilmsFromJson(result);

      return movies;
    } else {
      throw Exception('Failed to load Movies');
    }
  }
}
