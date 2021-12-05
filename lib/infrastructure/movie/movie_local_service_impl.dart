import 'package:hive_flutter/hive_flutter.dart';
import 'package:movie_app/infrastructure/movie/movie_dto.dart';
import 'package:movie_app/infrastructure/movie/movie_local_service.dart';

class MovieLocalServiceImpl implements MovieLocalService {
  @override
  Future<void> saveNowPlayingMovies(List<MovieDto> movies) async {
    await getMovieBox().clear();
    await getMovieBox().addAll(movies);
  }

  @override
  Future<List<MovieDto>> getNowPlayingMovies() async {
    return getMovieBox().values as List<MovieDto>;
  }

  Box<MovieDto> getMovieBox() {
    return Hive.box<MovieDto>('nowPlayingMovies');
  }
}
