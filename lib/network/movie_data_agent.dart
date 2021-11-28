import 'package:movie_app/data/vos/movie_vo.dart';

abstract class MovieDataAgent {
  Future<List<MovieVo>> getNowPlayingMovies(int page);
  Future<MovieVo> getMovieDeatil(int id);
}
