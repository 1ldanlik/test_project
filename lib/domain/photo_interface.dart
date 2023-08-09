import 'photo_model/photo.dart';

abstract interface class PhotoInterface {
  Future<Photo> getPhoto(String id);
}
