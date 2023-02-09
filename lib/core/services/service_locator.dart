import 'package:get_it/get_it.dart';
import 'package:movies_app/features/movies/data/datasources/movies_remote_datasource.dart';
import 'package:movies_app/features/movies/data/repositories/movies_repository.dart';
import 'package:movies_app/features/movies/domain/repositories/base_movies_repository.dart';
import 'package:movies_app/features/movies/domain/usecases/get_now_playing_moives_usecase.dart';
import 'package:movies_app/features/movies/domain/usecases/get_popular_movies_usecase.dart';
import 'package:movies_app/features/movies/domain/usecases/get_top_rated_movies_usecase.dart';
import 'package:movies_app/features/movies/presentation/bloc/movies_bloc.dart';

final sl = GetIt.instance;

class ServiceLocator {
  void init() {
    //*datasources
    sl.registerLazySingleton<MoviesRemoteDataSource>(
        () => MoviesRemoteDatasourceImpl());

    //*repositories
    sl.registerLazySingleton<MoviesRepository>(
        () => MoviesRepositoryImpl(movieremoteDataSource: sl()));

    //*usecases
    sl.registerLazySingleton<GetNowPlayingMoviesUseCase>(
        () => GetNowPlayingMoviesUseCase(moviesRepository: sl()));

    sl.registerLazySingleton<GetPopularMoviesUseCase>(
        () => GetPopularMoviesUseCase(moviesRepository: sl()));

    sl.registerLazySingleton<GetTopRatedMoviesUseCase>(
        () => GetTopRatedMoviesUseCase(moviesRepository: sl()));

    //*bloc (come Factory: ogni pagina ha il suo bloc)
    sl.registerFactory<MoviesBloc>(
      () => MoviesBloc(
        getNowPlayingMoviesUseCase: sl(),
        getPopularMoviesUseCase: sl(),
        getTopRatedMoviesUseCase: sl(),
      ),
    );
  }
}
