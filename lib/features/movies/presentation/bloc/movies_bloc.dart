import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:movies_app/core/utils/enums.dart';
import 'package:movies_app/features/movies/data/datasources/movies_remote_datasource.dart';
import 'package:movies_app/features/movies/domain/repositories/base_movies_repository.dart';
import 'package:movies_app/features/movies/domain/usecases/get_now_playing_moives_usecase.dart';

import '../../data/repositories/movies_repository.dart';
import '../../domain/entities/movie.dart';

part 'movies_event.dart';
part 'movies_state.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  MoviesBloc() : super(const NowPlayingMoviesState()) {
    on<MoviesEvent>((event, emit) async {
      MoviesRemoteDataSource moviesRemoteDataSource =
          MoviesRemoteDatasourceImpl();
      MoviesRepository moviesRepository =
          MoviesRepositoryImpl(movieremoteDataSource: moviesRemoteDataSource);

      if (event is GetNowPlayingMoviesEvent) {
        final result = await GetNowPlayingMoviesUseCase(
            moviesRepository: moviesRepository)();
        //*emetto evento per la UI
        emit(const NowPlayingMoviesState(nowPlayingState: RequestState.loaded));
        result.fold(
            (failure) => emit(
                  NowPlayingMoviesState(
                      message: failure.message,
                      nowPlayingState: RequestState.error),
                ),
            (movieList) => emit(NowPlayingMoviesState(
                nowPlayingMovies: movieList,
                nowPlayingState: RequestState.loaded)));
      }
    });
  }
}
