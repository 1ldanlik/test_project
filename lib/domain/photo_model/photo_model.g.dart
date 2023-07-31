// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhotoModel _$PhotoModelFromJson(Map<String, dynamic> json) => PhotoModel(
      id: json['id'] as int,
      url: json['url'] as String,
      title: json['title'] as String,
      albumId: json['albumId'] as int,
      thumbnailUrl: json['thumbnailUrl'] as String,
    );

Map<String, dynamic> _$PhotoModelToJson(PhotoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'albumId': instance.albumId,
      'title': instance.title,
      'url': instance.url,
      'thumbnailUrl': instance.thumbnailUrl,
    };
