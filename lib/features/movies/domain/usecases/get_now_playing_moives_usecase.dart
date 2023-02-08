import 'package:dartz/dartz.dart';
import 'package:movies_app/features/movies/domain/repositories/base_movies_repository.dart';

import '../../../../core/error/failures.dart';
import '../entities/movie.dart';

class GetNowPlayingMoviesUseCase {
  final MoviesRepository movieRepository;

  GetNowPlayingMoviesUseCase({
    required this.movieRepository,
  });

  Future<Either<Failure, List<Movie>>> call() async {
    return await movieRepository.getNowPlaying();
  }
}
