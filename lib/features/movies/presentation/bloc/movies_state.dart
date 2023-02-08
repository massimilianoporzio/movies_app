part of 'movies_bloc.dart';

abstract class MoviesState extends Equatable {
  const MoviesState();

  @override
  List<Object> get props => [];
}

class MoviesInitial extends MoviesState {}

class NowPlayingMoviesState extends MoviesState {
  final List<Movie> nowPlayingMovies;
  final RequestState nowPlayingState;
  final String message;

  const NowPlayingMoviesState({
    this.nowPlayingMovies = const [],
    this.nowPlayingState = RequestState.loading, //*iniziale
    this.message = '',
  });

  @override
  List<Object> get props => [
        nowPlayingMovies,
        nowPlayingState,
        message,
      ];
}
