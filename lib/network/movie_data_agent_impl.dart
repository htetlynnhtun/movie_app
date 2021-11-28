import 'package:dio/dio.dart';
import 'package:movie_app/data/vos/movie_vo.dart';
import 'package:movie_app/network/movie_data_agent.dart';
import 'package:movie_app/network/rest_client.dart';

class MovieDataAgentImpl implements MovieDataAgent {
  final RestClient _restClient;

  static final MovieDataAgentImpl _singleton = MovieDataAgentImpl._internal();

  factory MovieDataAgentImpl() {
    return _singleton;
  }

  MovieDataAgentImpl._internal() : _restClient = RestClient(Dio());

  @override
  Future<List<MovieVo>> getNowPlayingMovies(int page) {
    return _restClient
        .getNowPlayingMovies(
          'fa0a7c3829770be03e723f3d1b5fd96a',
          page,
        )
        .asStream()
        .map((res) => res.movies)
        .first;
  }

  @override
  Future<MovieVo> getMovieDeatil(int id) {
    return _restClient.getMovieDetail(id, 'fa0a7c3829770be03e723f3d1b5fd96a');
  }
}
