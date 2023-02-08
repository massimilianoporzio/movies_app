import 'package:dartz/dartz.dart';
import 'package:movies_app/features/movies/domain/repositories/base_movies_repository.dart';

import '../../../../core/error/failures.dart';
import '../entities/movie.dart';

class GetNowPlayingMoviesUseCase {
  final MoviesRepository moviesRepository;

  GetNowPlayingMoviesUseCase({
    required this.moviesRepository,
  });

  Future<Either<Failure, List<Movie>>> call() async {
    return await moviesRepository.getNowPlaying();
  }
}
