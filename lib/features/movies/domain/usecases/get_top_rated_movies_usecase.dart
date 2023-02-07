import '../entities/movie.dart';
import '../repositories/base_movies_repository.dart';

class GetTopRatedMoviesUseCase {
  final BaseMovieRepository baseMovieRepository;

  GetTopRatedMoviesUseCase({
    required this.baseMovieRepository,
  });

  Future<List<Movie>> call() async {
    return await baseMovieRepository.getTopRated();
  }
}
