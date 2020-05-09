import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:lumieg/src/models/movie_model.dart';

class MoviesProvider {
  String _apikey = '40d663002d852fe66e51ffa8291d3ecd';
  String _url = 'api.themoviedb.org';
  String _lenguage = 'es-ES';

  Future<List<Movie>> getMoviesNowPlaying() async {
    final url = Uri.https(_url, '3/movie/now_playing', {
      'api_key': _apikey,
      'language': _lenguage,
    });
    final response = await http.get(url);
    final decodedResponse = json.decode(response.body);

    final movie = new Movie();

    return movie.getMovies(decodedResponse['results']);
  }
}
