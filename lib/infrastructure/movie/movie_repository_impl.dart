import 'package:dartz/dartz.dart';
import 'package:movie_app/domain/movie_failure.dart';
import 'package:movie_app/domain/movie.dart';
import 'package:movie_app/infrastructure/movie/movie_dto.dart';
import 'package:movie_app/infrastructure/movie/movie_local_service.dart';
import 'package:movie_app/infrastructure/movie/movie_remote_service.dart';
import 'package:movie_app/infrastructure/movie/movie_repository.dart';
import 'package:movie_app/infrastructure/shared/network_exception.dart';

class MovieRepositoryImpl implements MovieRepository {
  final MovieRemoteService _remoteService;
  final MovieLocalService _localService;

  MovieRepositoryImpl(this._remoteService, this._localService);

  @override
  Future<Either<MovieFailure, List<Movie>>> getNowPlayingMovies() async {
    try {
      final apiResponse = await _remoteService.getNowPlayingMovies(1);
      return right(
        await apiResponse.when(
          noConnection: () {
            // return data from persistance using localservice
            return [];
          },
          notModified: () {
            // return data from persistance using localservice
            return [];
          },
          withNewData: (data) async {
            // save data to persistance using localservice
            await _localService.saveNowPlayingMovies(data);
            return data.toDomain();
          },
        ),
      );
    } on RestApiException catch (exception) {
      return left(MovieFailure.api(exception.errorCode));
    }
  }
}

extension DtoListToDomainList on List<MovieDto> {
  List<Movie> toDomain() => map((e) => e.toDomain()).toList();
}
