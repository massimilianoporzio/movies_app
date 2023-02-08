import '../envied/env.dart';

class ApiConstants {
  static const baseUrl = 'https://api.themoviedb.org/3';
  static final apiKey = Env.tmdbApiKey;
  static final String nowPlayingMoviesPath =
      "$baseUrl/movie/now_playing?api_key=$apiKey&language=it-IT&region=IT";
  static final String popularMoviesPath =
      "$baseUrl/movie/popular?api_key=$apiKey&language=it-IT&region=IT";
  static final String topRatedMoviesPath =
      "$baseUrl/movie/top_rated?api_key=$apiKey&language=it-IT&region=IT";
}
