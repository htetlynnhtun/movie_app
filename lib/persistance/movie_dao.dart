import 'package:hive/hive.dart';
import 'package:movie_app/data/vos/movie_vo.dart';

class MovieDao {
  static final MovieDao _singleton = MovieDao._internal();

  factory MovieDao() => _singleton;

  MovieDao._internal();

  Box<MovieVo> getMovieBox() {
    return Hive.box<MovieVo>('favoriteMovies');
  }

  void addMovieToFav(MovieVo movie) async {
    await getMovieBox().put(movie.id, movie);
  }

  void deleteMovieFromFav(int id) async {
    await getMovieBox().delete(id);
  }

  bool isAlreadyFav(int id) {
    return getMovieBox().containsKey(id);
  }
}
