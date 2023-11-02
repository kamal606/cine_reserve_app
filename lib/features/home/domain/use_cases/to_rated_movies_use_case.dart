import 'package:cine_reserve_app/core/utils/failure.dart';
import 'package:cine_reserve_app/features/home/domain/entity/movie_entity.dart';
import 'package:cine_reserve_app/features/home/domain/repository/top_rated_repo.dart';
import 'package:dartz/dartz.dart';

class TopRatedMoviesUseCase {
  final TopRatedMoviesRepo topRatedMoviesRepo;

  TopRatedMoviesUseCase({required this.topRatedMoviesRepo});

  Future<Either<Failure, List<MoviesEntity>>> getTopRatedMovies() async {
    return await topRatedMoviesRepo.fetchTopRatedMovies();
  }
}
