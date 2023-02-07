import 'package:dartz/dartz.dart';
import 'package:movies_app/features/movies/domain/repositories/base_movies_repository.dart';

import '../../../../core/error/failures.dart';
import '../entities/movie.dart';

class GetNowPlayingMoviesUseCase {
  final BaseMovieRepository baseMovieRepository;

  GetNowPlayingMoviesUseCase({
    required this.baseMovieRepository,
  });

  Future<Either<Failure, List<Movie>>> call() async {
    return await baseMovieRepository.getNowPlaying();
  }
}
