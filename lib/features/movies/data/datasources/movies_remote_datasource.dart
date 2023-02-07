import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:movies_app/features/movies/data/models/movie_model.dart';

class MovieRemoteDatasource {
  Future<List<MovieModel>> getNowPlayingMovies() async {
    final response = await Dio().get(
        'https://api.themoviedb.org/3/movie/now_playing?api_key=a88dcdfc2c28398374532e12def67676');
    if (response.statusCode == 200) {
      return List<MovieModel>.from((response.data['results'] as List)
          .map((e) => MovieModel.fromJson(e))); //*LA API ritorna "results"
    } else {
      return []; //lista vuota
    }
  }
}
