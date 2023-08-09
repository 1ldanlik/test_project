import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../domain/photo_model/photo_model.dart';
import 'favorite_urls.dart';

part 'favorite_api.g.dart';

@RestApi()
abstract class FavoriteApi {
  factory FavoriteApi(Dio dio, {String baseUrl}) = _FavoriteApi;

  @GET(FavoriteUrls.photoId)
  Future<PhotoModel> getPhoto(@Path("id") String id);
}
