import 'package:movies_app/features/movies/domain/repositories/base_movies_repository.dart';

import '../entities/movie.dart';

class GetNowPlayingMoviesUseCase {
  final BaseMovieRepository baseMovieRepository;

  GetNowPlayingMoviesUseCase({
    required this.baseMovieRepository,
  });

  Future<List<Movie>> call() async {
    return await baseMovieRepository.getNowPlaying();
  }
}
