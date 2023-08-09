import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'photo.g.dart';

@HiveType(typeId: 0)
@JsonSerializable()
class Photo {
  @HiveField(0)
  final int id;

  @HiveField(1)
  final int albumId;

  @HiveField(2)
  final String title;

  @HiveField(3)
  final String url;

  @HiveField(4)
  final String thumbnailUrl;

  @HiveField(5)
  final bool isFavorite;

  Photo({
    required this.id,
    required this.albumId,
    required this.url,
    required this.thumbnailUrl,
    required this.title,
    this.isFavorite = false,
  });

  Photo copyWith({
    int? id,
    int? albumId,
    String? title,
    String? url,
    String? thumbnailUrl,
    bool? isFavorite,
  }) =>
      Photo(
        id: id ?? this.id,
        url: url ?? this.url,
        title: title ?? this.title,
        albumId: albumId ?? this.albumId,
        thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl,
        isFavorite: isFavorite ?? this.isFavorite,
      );

  const Photo.empty()
      : id = -1,
        albumId = -1,
        url = '',
        thumbnailUrl = '',
        title = '',
        isFavorite = false;

  bool get isEmpty {
    if (id == -1 &&
        albumId == -1 &&
        url.isEmpty &&
        thumbnailUrl.isEmpty &&
        title.isEmpty) return true;

    return false;
  }

  factory Photo.fromJson(Map<String, dynamic> json) => _$PhotoFromJson(json);

  Map<String, dynamic> toJson() => _$PhotoToJson(this);
}
