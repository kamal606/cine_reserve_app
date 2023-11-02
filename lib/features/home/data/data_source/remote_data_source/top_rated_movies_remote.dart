import 'package:cine_reserve_app/core/constant/strings.dart';
import 'package:cine_reserve_app/core/utils/api_service.dart';
import 'package:cine_reserve_app/features/home/data/models/movie_model.dart';

abstract class TopRatedMoviesRemote {
  Future<List<MoviesModel>> getTopRatedMovies();
}

class TopRatedMoviesRemoteImple implements TopRatedMoviesRemote {
  final ApiService apiService;

  TopRatedMoviesRemoteImple({required this.apiService});
  @override
  Future<List<MoviesModel>> getTopRatedMovies() async {
    Map<String, dynamic> data =
        await apiService.get(endPoint: kEndPointsTopRated);

    List<MoviesModel> listMovies = [];

    for (var movie in data["results"]) {
      listMovies.add(MoviesModel.fromJson(movie));
    }
    return listMovies;
  }
}
