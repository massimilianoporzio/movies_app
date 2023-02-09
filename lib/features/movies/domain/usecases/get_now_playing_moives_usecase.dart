import 'package:dartz/dartz.dart';
import 'package:movies_app/core/usecases/base_usecase.dart';
import 'package:movies_app/features/movies/domain/repositories/base_movies_repository.dart';

import '../../../../core/error/failures.dart';

class GetNowPlayingMoviesUseCase extends BaseUseCase {
  final MoviesRepository moviesRepository;

  GetNowPlayingMoviesUseCase({
    required this.moviesRepository,
  });

  @override
  Future<Either<Failure, dynamic>> call(parameters) async {
    return await moviesRepository.getNowPlaying();
  }
}
