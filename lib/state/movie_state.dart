import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:movie_app/data/models/movie_model.dart';
import 'package:movie_app/data/models/movie_model_impl.dart';
import 'package:movie_app/data/vos/movie_vo.dart';
import 'package:movie_app/persistance/movie_dao.dart';

class MovieState extends ChangeNotifier {
  final MovieModel _movieModel = MovieModelImpl();
  List<MovieVo>? nowPlayingMovies;
  MovieVo? currentMovie;

  MovieState() {
    _movieModel.getNowPlayingMovies(1).then((value) {
      nowPlayingMovies = value;
      notifyListeners();
    });
    MovieDao().getMovieBox().listenable().addListener(notifyListeners);
  }

  void getMovieDetail(int id) {
    _movieModel.getMovieDetails(id).then((value) {
      currentMovie = value;
      notifyListeners();
    });
  }

  void clearCurrentMovie() {
    currentMovie = null;
    notifyListeners();
  }

  void addMovieToFav(MovieVo movie) {
    _movieModel.addMovieToFav(movie);
  }

  void deleteMovieFromFav(int id) {
    _movieModel.deleteMovieFromFav(id);
  }

  bool isAlreadyFav(int id) {
    return _movieModel.isAlreadyFav(id);
  }

  @override
  void dispose() {
    MovieDao().getMovieBox().listenable().removeListener(notifyListeners);
    super.dispose();
  }
}
