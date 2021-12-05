import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie.freezed.dart';

@freezed
class Movie with _$Movie {
  const Movie._();
  const factory Movie({
    required int id,
    required String title,
    required String posterPath,
    required String overview,
  }) = _Movie;
}
