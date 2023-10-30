import 'package:cine_reserve_app/core/constant/strings.dart';
import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio;
  ApiService(this._dio);

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    final result = await _dio.get("$kBaseUrl$endPoint",
        options: Options(headers: {
          "authorization":
              "Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIyZTU0ZGJhZTRkYWRiMmVmMjQ3MTUzYjE5NzdmYTYwZiIsInN1YiI6IjY1M2I5NTdiY2M5NjgzMDBjOWUzMDMzZCIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.jCyclBJJim-CN3ThQLMSQVUcC4mKimzUi-FdHqtpHt4"
        }));
    return result.data;
  }
}
