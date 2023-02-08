import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/movie.dart';
import '../repositories/base_movies_repository.dart';

class GetTopRatedMoviesUseCase {
  final MoviesRepository moviesRepository;

  GetTopRatedMoviesUseCase({
    required this.moviesRepository,
  });

  Future<Either<Failure, List<Movie>>> call() async {
    return await moviesRepository.getTopRated();
  }
}
