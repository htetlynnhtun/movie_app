import 'package:movie_app/data/models/movie_model.dart';
import 'package:movie_app/data/vos/movie_vo.dart';
import 'package:movie_app/network/movie_data_agent.dart';
import 'package:movie_app/network/movie_data_agent_impl.dart';
import 'package:movie_app/persistance/movie_dao.dart';

class MovieModelImpl implements MovieModel {
  final MovieDataAgent _dataAgent = MovieDataAgentImpl();

  static final MovieModelImpl _singleton = MovieModelImpl._internal();

  factory MovieModelImpl() => _singleton;

  MovieModelImpl._internal();

  final MovieDao _movieDao = MovieDao();

  @override
  Future<MovieVo> getMovieDetails(int id) {
    return _dataAgent.getMovieDeatil(id);
  }

  @override
  Future<List<MovieVo>> getNowPlayingMovies(int page) {
    return _dataAgent.getNowPlayingMovies(page);
  }

  @override
  void addMovieToFav(MovieVo movie) {
    _movieDao.addMovieToFav(movie);
  }

  @override
  void deleteMovieFromFav(int id) {
    _movieDao.deleteMovieFromFav(id);
  }

  @override
  bool isAlreadyFav(int id) {
    return _movieDao.isAlreadyFav(id);
  }
}
