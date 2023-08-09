import 'package:dio/dio.dart';
import 'package:test_project/api/service/favorite/favorite_api.dart';
import 'package:test_project/domain/photo_model/photo.dart';

import '../domain/photo_interface.dart';

class PhotoRepository implements PhotoInterface {
  final FavoriteApi _api;

  PhotoRepository(Dio dio) : _api = FavoriteApi(dio);

  @override
  Future<Photo> getPhoto(String id) async {
    final photo = await _api.getPhoto(id);

    return photo;
  }
}
