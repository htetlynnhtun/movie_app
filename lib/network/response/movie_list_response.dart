import 'package:json_annotation/json_annotation.dart';

import 'package:movie_app/data/vos/movie_vo.dart';

part 'movie_list_response.g.dart';

@JsonSerializable()
class MovieListResponse {
  @JsonKey(name: 'results')
  List<MovieVo> movies;

  MovieListResponse({
    required this.movies,
  });

  factory MovieListResponse.fromJson(Map<String, dynamic> json) => _$MovieListResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MovieListResponseToJson(this);
}
