// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_vo.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MovieVoAdapter extends TypeAdapter<MovieVo> {
  @override
  final int typeId = 123;

  @override
  MovieVo read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MovieVo(
      id: fields[1] as int,
      title: fields[2] as String,
      posterPath: fields[3] as String,
      overview: fields[4] as String,
    );
  }

  @override
  void write(BinaryWriter writer, MovieVo obj) {
    writer
      ..writeByte(4)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.title)
      ..writeByte(3)
      ..write(obj.posterPath)
      ..writeByte(4)
      ..write(obj.overview);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MovieVoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieVo _$MovieVoFromJson(Map<String, dynamic> json) => MovieVo(
      id: json['id'] as int,
      title: json['title'] as String,
      posterPath: json['poster_path'] as String,
      overview: json['overview'] as String,
    );

Map<String, dynamic> _$MovieVoToJson(MovieVo instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'poster_path': instance.posterPath,
      'overview': instance.overview,
    };
