import 'package:cine_reserve_app/core/constant/strings.dart';
import 'package:cine_reserve_app/core/utils/api_service.dart';
import 'package:cine_reserve_app/features/home/data/models/movie_model.dart';

abstract class NewInCinemasRemote {
  Future<List<MoviesModel>> getNewInCinemas();
}

class NewInCinemasRemoteImpl implements NewInCinemasRemote {
  final ApiService apiService;
  NewInCinemasRemoteImpl({required this.apiService});

  @override
  Future<List<MoviesModel>> getNewInCinemas() async {
    Map<String, dynamic> data =
        await apiService.get(endPoint: kEndPointsNowInCinemas);

    List<MoviesModel> listMovies = [];

    for (var movie in data["results"]) {
      listMovies.add(MoviesModel.fromJson(movie));
    }
    return listMovies;
  }
}
