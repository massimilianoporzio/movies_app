import '../../domain/entities/movie.dart';

class MovieModel extends Movie {
  const MovieModel(
      {required super.backdropPath,
      required super.genreIds,
      required super.id,
      required super.overview,
      required super.title,
      required super.voteAverage,
      required super.releaseDate});

  factory MovieModel.fromJson(Map<String, dynamic> json) => MovieModel(
        backdropPath: json["backdrop_path"],
        genreIds: List<int>.from(json["genre_ids"].map((x) => x)),
        id: json["id"],
        overview: json["overview"],
        releaseDate: json["release_date"], //*è una data messa in un double?
        title: json["title"],
        voteAverage: json["vote_average"]?.toDouble(),
      );
}
