class ApiConstants {
  static const baseUrl = 'https://api.themoviedb.org/3';
  static const apiKey = "a88dcdfc2c28398374532e12def67676";
  static const String nowPlayingMoviesPath =
      "$baseUrl/movie/now_playing?api_key=$apiKey";
  static const String popularMoviesPath =
      "$baseUrl/movie/popular?api_key=$apiKey";
  static const String topRatedMoviesPath =
      "$baseUrl/movie/top_rated?api_key=$apiKey";
}
