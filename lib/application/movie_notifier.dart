import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/domain/movie.dart';
import 'package:movie_app/infrastructure/movie/movie_repository.dart';
import 'package:riverpod/riverpod.dart';

part 'movie_notifier.freezed.dart';

@freezed
class MovieState with _$MovieState {
  const MovieState._();
  const factory MovieState.loading() = _Loading;
  const factory MovieState.loadSuccess(List<Movie> movies) = _LoadSuccess;
}

class MovieNotifier extends StateNotifier<MovieState> {
  final MovieRepository _repository;

  MovieNotifier(this._repository) : super(const MovieState.loading()) {
    getNowPlayingMovies();
  }

  Future<void> getNowPlayingMovies() async {
    final failureOrMovies = await _repository.getNowPlayingMovies();

    state = failureOrMovies.fold(
      (failure) => const MovieState.loading(),
      (movies) => MovieState.loadSuccess(movies),
    );
  }
}
