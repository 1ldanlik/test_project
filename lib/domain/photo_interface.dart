
import 'photo_model/photo_model.dart';

abstract interface class PhotoInterface {
  Future<PhotoModel> getPhotos() {
    return Future.value();
  }
}