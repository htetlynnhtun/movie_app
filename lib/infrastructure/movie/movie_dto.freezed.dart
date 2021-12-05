// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieDto _$MovieDtoFromJson(Map<String, dynamic> json) {
  return _MovieDto.fromJson(json);
}

/// @nodoc
class _$MovieDtoTearOff {
  const _$MovieDtoTearOff();

  _MovieDto call(
      {@JsonKey(name: 'id') @HiveField(1) required int id,
      @JsonKey(name: 'title') @HiveField(2) required String title,
      @JsonKey(name: 'poster_path') @HiveField(3) required String posterPath,
      @JsonKey(name: 'overview') @HiveField(4) required String overview}) {
    return _MovieDto(
      id: id,
      title: title,
      posterPath: posterPath,
      overview: overview,
    );
  }

  MovieDto fromJson(Map<String, Object?> json) {
    return MovieDto.fromJson(json);
  }
}

/// @nodoc
const $MovieDto = _$MovieDtoTearOff();

/// @nodoc
mixin _$MovieDto {
  @JsonKey(name: 'id')
  @HiveField(1)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  @HiveField(2)
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'poster_path')
  @HiveField(3)
  String get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'overview')
  @HiveField(4)
  String get overview => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieDtoCopyWith<MovieDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDtoCopyWith<$Res> {
  factory $MovieDtoCopyWith(MovieDto value, $Res Function(MovieDto) then) =
      _$MovieDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') @HiveField(1) int id,
      @JsonKey(name: 'title') @HiveField(2) String title,
      @JsonKey(name: 'poster_path') @HiveField(3) String posterPath,
      @JsonKey(name: 'overview') @HiveField(4) String overview});
}

/// @nodoc
class _$MovieDtoCopyWithImpl<$Res> implements $MovieDtoCopyWith<$Res> {
  _$MovieDtoCopyWithImpl(this._value, this._then);

  final MovieDto _value;
  // ignore: unused_field
  final $Res Function(MovieDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? posterPath = freezed,
    Object? overview = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$MovieDtoCopyWith<$Res> implements $MovieDtoCopyWith<$Res> {
  factory _$MovieDtoCopyWith(_MovieDto value, $Res Function(_MovieDto) then) =
      __$MovieDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') @HiveField(1) int id,
      @JsonKey(name: 'title') @HiveField(2) String title,
      @JsonKey(name: 'poster_path') @HiveField(3) String posterPath,
      @JsonKey(name: 'overview') @HiveField(4) String overview});
}

/// @nodoc
class __$MovieDtoCopyWithImpl<$Res> extends _$MovieDtoCopyWithImpl<$Res>
    implements _$MovieDtoCopyWith<$Res> {
  __$MovieDtoCopyWithImpl(_MovieDto _value, $Res Function(_MovieDto) _then)
      : super(_value, (v) => _then(v as _MovieDto));

  @override
  _MovieDto get _value => super._value as _MovieDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? posterPath = freezed,
    Object? overview = freezed,
  }) {
    return _then(_MovieDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_MovieDto extends _MovieDto {
  const _$_MovieDto(
      {@JsonKey(name: 'id') @HiveField(1) required this.id,
      @JsonKey(name: 'title') @HiveField(2) required this.title,
      @JsonKey(name: 'poster_path') @HiveField(3) required this.posterPath,
      @JsonKey(name: 'overview') @HiveField(4) required this.overview})
      : super._();

  factory _$_MovieDto.fromJson(Map<String, dynamic> json) =>
      _$$_MovieDtoFromJson(json);

  @override
  @JsonKey(name: 'id')
  @HiveField(1)
  final int id;
  @override
  @JsonKey(name: 'title')
  @HiveField(2)
  final String title;
  @override
  @JsonKey(name: 'poster_path')
  @HiveField(3)
  final String posterPath;
  @override
  @JsonKey(name: 'overview')
  @HiveField(4)
  final String overview;

  @override
  String toString() {
    return 'MovieDto(id: $id, title: $title, posterPath: $posterPath, overview: $overview)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MovieDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.overview, overview) ||
                other.overview == overview));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, posterPath, overview);

  @JsonKey(ignore: true)
  @override
  _$MovieDtoCopyWith<_MovieDto> get copyWith =>
      __$MovieDtoCopyWithImpl<_MovieDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieDtoToJson(this);
  }
}

abstract class _MovieDto extends MovieDto {
  const factory _MovieDto(
      {@JsonKey(name: 'id')
      @HiveField(1)
          required int id,
      @JsonKey(name: 'title')
      @HiveField(2)
          required String title,
      @JsonKey(name: 'poster_path')
      @HiveField(3)
          required String posterPath,
      @JsonKey(name: 'overview')
      @HiveField(4)
          required String overview}) = _$_MovieDto;
  const _MovieDto._() : super._();

  factory _MovieDto.fromJson(Map<String, dynamic> json) = _$_MovieDto.fromJson;

  @override
  @JsonKey(name: 'id')
  @HiveField(1)
  int get id;
  @override
  @JsonKey(name: 'title')
  @HiveField(2)
  String get title;
  @override
  @JsonKey(name: 'poster_path')
  @HiveField(3)
  String get posterPath;
  @override
  @JsonKey(name: 'overview')
  @HiveField(4)
  String get overview;
  @override
  @JsonKey(ignore: true)
  _$MovieDtoCopyWith<_MovieDto> get copyWith =>
      throw _privateConstructorUsedError;
}
