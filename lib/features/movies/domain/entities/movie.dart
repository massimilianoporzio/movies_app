class Movie {
  Movie({
    required this.backdropPath,
    required this.genreIds,
    required this.id,
    required this.overview,
    required this.title,
    required this.voteAverage,
  });

  final String backdropPath;
  final List<int> genreIds;
  final int id;
  final String overview;
  final String title;
  final double voteAverage;
}
