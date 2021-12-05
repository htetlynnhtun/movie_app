import 'package:movie_app/infrastructure/movie/api_response.dart';
import 'package:movie_app/infrastructure/movie/movie_dto.dart';

abstract class MovieRemoteService {
  Future<ApiResponse<List<MovieDto>>> getNowPlayingMovies(int page);
}
