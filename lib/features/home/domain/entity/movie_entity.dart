import 'package:equatable/equatable.dart';

class MoviesEntity extends Equatable {
  final int idMovie;
  final bool adultMovie;
  final String backdropPathMovie;
  final List<dynamic> genreIdsMovie;
  final String originalLanguageMovie;
  final String originalTitleMovie;
  final String overviewMovie;
  final double popularityMovie;
  final String posterPathMovie;
  final String releaseDateMovie;
  final String titleMovie;
  final bool videoMovie;
  final double voteAverageMovie;
  final int voteCountMovie;

  const MoviesEntity(
      {required this.idMovie,
      required this.adultMovie,
      required this.backdropPathMovie,
      required this.genreIdsMovie,
      required this.originalLanguageMovie,
      required this.originalTitleMovie,
      required this.overviewMovie,
      required this.popularityMovie,
      required this.posterPathMovie,
      required this.releaseDateMovie,
      required this.titleMovie,
      required this.videoMovie,
      required this.voteAverageMovie,
      required this.voteCountMovie});

  @override
  List<Object?> get props => [
        idMovie,
        adultMovie,
        backdropPathMovie,
        genreIdsMovie,
        originalLanguageMovie,
        originalTitleMovie,
        overviewMovie,
        popularityMovie,
        posterPathMovie,
        releaseDateMovie,
        titleMovie,
        videoMovie,
        voteAverageMovie,
        voteCountMovie
      ];
}
