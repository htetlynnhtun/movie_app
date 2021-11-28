import 'package:dio/dio.dart';
import 'package:movie_app/data/vos/movie_vo.dart';
import 'package:movie_app/network/response/movie_list_response.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: 'https://api.themoviedb.org/3')
abstract class RestClient {
  factory RestClient(Dio dio) = _RestClient;

  @GET('/movie/now_playing')
  Future<MovieListResponse> getNowPlayingMovies(
    @Query('api_key') String apiKey,
    @Query('page') int page,
  );

  @GET('/movie/{id}')
  Future<MovieVo> getMovieDetail(
    @Path('id') int id,
    @Query('api_key') String apiKey,
  );
}
