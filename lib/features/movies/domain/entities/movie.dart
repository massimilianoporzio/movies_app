import 'package:equatable/equatable.dart';

class Movie extends Equatable {
  const Movie({
    required this.backdropPath,
    required this.genreIds,
    required this.id,
    required this.overview,
    required this.title,
    required this.voteAverage,
    required this.releaseDate,
  });

  final String backdropPath;
  final List<int> genreIds;
  final int id;
  final String overview;
  final String title;
  final double voteAverage;
  final double releaseDate;

  @override
  List<Object?> get props => [
        backdropPath,
        genreIds,
        id,
        overview,
        title,
        voteAverage,
        releaseDate,
      ];
}
