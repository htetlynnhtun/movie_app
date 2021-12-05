import 'package:dio/dio.dart';
import 'package:movie_app/infrastructure/movie/api_response.dart';
import 'package:movie_app/infrastructure/movie/movie_dto.dart';
import 'package:movie_app/infrastructure/movie/movie_remote_service.dart';
import 'package:movie_app/infrastructure/shared/dio_extensions.dart';
import 'package:movie_app/infrastructure/shared/network_exception.dart';

class MovieRemoteServiceImpl implements MovieRemoteService {
  final Dio _dio;

  MovieRemoteServiceImpl(this._dio);

  @override
  Future<ApiResponse<List<MovieDto>>> getNowPlayingMovies(int page) async {
    try {
      final response = await _dio.getUri(
        Uri.https(
          'api.themoviedb.org',
          '/3/movie/now_playing',
          {
            'api_key': 'fa0a7c3829770be03e723f3d1b5fd96a',
            'page': '1',
          },
        ),
      );

      // if (statusCode == 304) not modified
      // return ApiResponse.notModified;

      if (response.statusCode == 200) {
        final convertedData = response.data['results'].map<MovieDto>((json) => MovieDto.fromJson(json)).toList();
        return ApiResponse.withNewData(convertedData);
      } else {
        throw RestApiException(response.statusCode);
      }
    } on DioError catch (exception) {
      if (exception.isNoConnectionError) {
        return const ApiResponse.noConnection();
      } else if (exception.response != null) {
        throw RestApiException(exception.response!.statusCode);
      } else {
        rethrow;
      }
    }
  }
}
