import 'package:dartz/dartz.dart';
import 'package:movies_app/core/usecases/base_usecase.dart';

import '../../../../core/error/failures.dart';
import '../entities/movie.dart';
import '../repositories/base_movies_repository.dart';

class GetTopRatedMoviesUseCase extends BaseUseCase {
  final MoviesRepository moviesRepository;

  GetTopRatedMoviesUseCase({
    required this.moviesRepository,
  });

  @override
  Future<Either<Failure, dynamic>> call(parameters) async {
    return await moviesRepository.getTopRated();
  }
}
