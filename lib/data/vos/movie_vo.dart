import 'package:json_annotation/json_annotation.dart';

part 'movie_vo.g.dart';

@JsonSerializable()
class MovieVo {
  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'title')
  String title;

  @JsonKey(name: 'poster_path')
  String posterPath;

  @JsonKey(name: 'overview')
  String overview;

  MovieVo({
    required this.id,
    required this.title,
    required this.posterPath,
    required this.overview,
  });

  factory MovieVo.fromJson(Map<String, dynamic> json) => _$MovieVoFromJson(json);

  Map<String, dynamic> toJson() => _$MovieVoToJson(this);
}
