import 'package:json_annotation/json_annotation.dart';

part 'photo_model.g.dart';

@JsonSerializable()
class PhotoModel {
  final int id;
  final int albumId;
  final String title;
  final String url;
  final String thumbnailUrl;
  final bool isFavorite;

  PhotoModel({
    required this.id,
    required this.url,
    required this.title,
    required this.albumId,
    required this.thumbnailUrl,
    this.isFavorite = false,
  });

  factory PhotoModel.fromJson(Map<String, dynamic> json) =>
      _$PhotoModelFromJson(json);

  Map<String, dynamic> toJson() => _$PhotoModelToJson(this);
}
