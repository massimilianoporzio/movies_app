import '../entities/movie.dart';
import '../repositories/base_movies_repository.dart';

class GetPopularMoviesUseCase {
  final BaseMovieRepository baseMovieRepository;

  GetPopularMoviesUseCase({
    required this.baseMovieRepository,
  });

  Future<List<Movie>> call() async {
    return await baseMovieRepository.getPopularMovies();
  }
}
