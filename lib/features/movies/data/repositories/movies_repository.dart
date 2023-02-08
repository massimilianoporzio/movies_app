import 'package:movies_app/core/error/exceptions.dart';
import 'package:movies_app/core/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:movies_app/features/movies/data/datasources/movies_remote_datasource.dart';
import 'package:movies_app/features/movies/domain/entities/movie.dart';
import 'package:movies_app/features/movies/domain/repositories/base_movies_repository.dart';

class MoviesRepositoryImpl implements MoviesRepository {
  final MoviesRemoteDataSource movieremoteDataSource;

  MoviesRepositoryImpl({required this.movieremoteDataSource});
  @override
  Future<Either<Failure, List<Movie>>> getNowPlaying() async {
    try {
      final result = await movieremoteDataSource.getNowPlayingMovies();
      return Right(result);
    } on Exception catch (e) {
      return Left(_mapExceptionToFailure(e));
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getPopularMovies() async {
    try {
      final result = await movieremoteDataSource.getPopularMovies();
      return Right(result);
    } on Exception catch (e) {
      return Left(_mapExceptionToFailure(e));
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getTopRated() async {
    try {
      final result = await movieremoteDataSource.getTopRatedMovies();
      return Right(result);
    } on Exception catch (e) {
      return Left(_mapExceptionToFailure(e));
    }
  }

  Failure _mapExceptionToFailure(Exception e) {
    switch (e.runtimeType) {
      case ServerException:
        final se = e as ServerException;
        return ServerFailure(message: se.errorMessageModel.statusMessage);
      case LocalDatabaseException:
        final le = e as LocalDatabaseException;
        return DatabaseFailure(message: le.message);
      default:
        return const GenericFailure();
    }
  }
}
