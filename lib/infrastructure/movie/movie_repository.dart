import 'package:dartz/dartz.dart';
import 'package:movie_app/domain/movie.dart';
import 'package:movie_app/domain/movie_failure.dart';

abstract class MovieRepository {
  Future<Either<MovieFailure, List<Movie>>> getNowPlayingMovies();
}
