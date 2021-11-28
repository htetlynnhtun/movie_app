import 'package:movie_app/data/models/movie_model.dart';
import 'package:movie_app/data/vos/movie_vo.dart';
import 'package:movie_app/network/movie_data_agent.dart';
import 'package:movie_app/network/movie_data_agent_impl.dart';

class MovieModelImpl implements MovieModel {
  final MovieDataAgent _dataAgent = MovieDataAgentImpl();

  static final MovieModelImpl _singleton = MovieModelImpl._internal();

  factory MovieModelImpl() => _singleton;

  MovieModelImpl._internal();

  @override
  Future<MovieVo> getMovieDetails(int id) {
    return _dataAgent.getMovieDeatil(id);
  }

  @override
  Future<List<MovieVo>> getNowPlayingMovies(int page) {
    return _dataAgent.getNowPlayingMovies(page);
  }
}
