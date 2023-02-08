import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/movie.dart';
import '../repositories/base_movies_repository.dart';

class GetPopularMoviesUseCase {
  final MoviesRepository movieRepository;

  GetPopularMoviesUseCase({
    required this.movieRepository,
  });

  Future<Either<Failure, List<Movie>>> call() async {
    return await movieRepository.getPopularMovies();
  }
}
