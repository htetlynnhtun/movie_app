import 'package:movie_app/data/vos/movie_vo.dart';

abstract class MovieModel {
  Future<List<MovieVo>> getNowPlayingMovies(int page);
  Future<MovieVo> getMovieDetails(int id);
}
