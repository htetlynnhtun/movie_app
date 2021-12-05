import 'package:movie_app/infrastructure/movie/movie_dto.dart';

abstract class MovieLocalService {
  Future<List<MovieDto>> getNowPlayingMovies();
  Future<void> saveNowPlayingMovies(List<MovieDto> movies);
}
