import 'package:json_annotation/json_annotation.dart';

part 'genre.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Genre {
  Genre({
    required this.id,
    this.name,
    this.slug,
    this.gamesCount,
    this.imageBackground,
  });

  final int id;
  final String? name;
  final String? slug;
  final int? gamesCount;
  final String? imageBackground;

  factory Genre.fromJson(Map<String, dynamic> json) => _$GenreFromJson(json);
}
