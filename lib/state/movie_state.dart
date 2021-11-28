import 'package:flutter/material.dart';
import 'package:movie_app/data/models/movie_model.dart';
import 'package:movie_app/data/models/movie_model_impl.dart';
import 'package:movie_app/data/vos/movie_vo.dart';

class MovieState extends ChangeNotifier {
  final MovieModel _movieModel = MovieModelImpl();
  List<MovieVo>? nowPlayingMovies;
  MovieVo? currentMovie;

  MovieState() {
    _movieModel.getNowPlayingMovies(1).then((value) {
      nowPlayingMovies = value;
      notifyListeners();
    });
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
}
