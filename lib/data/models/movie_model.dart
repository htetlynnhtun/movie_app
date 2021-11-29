import 'package:movie_app/data/vos/movie_vo.dart';

abstract class MovieModel {
  Future<List<MovieVo>> getNowPlayingMovies(int page);
  Future<MovieVo> getMovieDetails(int id);

  void addMovieToFav(MovieVo movie);
  void deleteMovieFromFav(int id);
  bool isAlreadyFav(int id);
}
