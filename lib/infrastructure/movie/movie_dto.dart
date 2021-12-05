// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:movie_app/domain/movie.dart';

part 'movie_dto.freezed.dart';
part 'movie_dto.g.dart';

@freezed
@HiveType(typeId: 123, adapterName: 'MovieDtoAdapter')
class MovieDto with _$MovieDto {
  const MovieDto._();

  @JsonSerializable()
  const factory MovieDto({
    @JsonKey(name: 'id') @HiveField(1) required int id,
    @JsonKey(name: 'title') @HiveField(2) required String title,
    @JsonKey(name: 'poster_path') @HiveField(3) required String posterPath,
    @JsonKey(name: 'overview') @HiveField(4) required String overview,
  }) = _MovieDto;

  factory MovieDto.fromJson(Map<String, dynamic> json) => _$MovieDtoFromJson(json);

  factory MovieDto.fromDomain(Movie entity) => MovieDto(
        id: entity.id,
        title: entity.title,
        posterPath: entity.posterPath,
        overview: entity.overview,
      );

  Movie toDomain() => Movie(
        id: id,
        title: title,
        posterPath: posterPath,
        overview: overview,
      );
}
