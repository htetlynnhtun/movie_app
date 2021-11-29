import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'movie_vo.g.dart';

@JsonSerializable()
@HiveType(typeId: 123, adapterName: 'MovieVoAdapter')
class MovieVo {
  @JsonKey(name: 'id')
  @HiveField(1)
  int id;

  @JsonKey(name: 'title')
  @HiveField(2)
  String title;

  @JsonKey(name: 'poster_path')
  @HiveField(3)
  String posterPath;

  @JsonKey(name: 'overview')
  @HiveField(4)
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
