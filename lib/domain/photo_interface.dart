
import 'photo_model/photo_model.dart';

abstract interface class PhotoInterface {
  Future<PhotoModel> getPhoto();
}