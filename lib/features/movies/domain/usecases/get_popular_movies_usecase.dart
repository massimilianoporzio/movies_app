import 'package:dartz/dartz.dart';
import 'package:movies_app/core/usecases/base_usecase.dart';

import '../../../../core/error/failures.dart';
import '../repositories/base_movies_repository.dart';

class GetPopularMoviesUseCase extends BaseUseCase {
  final MoviesRepository moviesRepository;

  GetPopularMoviesUseCase({
    required this.moviesRepository,
  });

  @override
  Future<Either<Failure, dynamic>> call(parameters) async {
    return await moviesRepository.getPopularMovies();
  }
}
