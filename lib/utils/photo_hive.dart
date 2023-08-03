import 'package:hive/hive.dart';
import 'package:test_project/domain/photo_model/photo_model.dart';

class HiveKeys {
  static const FAVORITE_KEY = 'favorite_key';
}

class PhotoHive {
  late final Box<PhotoModel> box;

  PhotoHive();

  Future<void> init() async {
    box = await Hive.openBox<PhotoModel>(HiveKeys.FAVORITE_KEY);
  }

  Future<void> setPhoto(PhotoModel photo) => box.put(photo.id, photo);

  Future<void> removePhoto(int id) => box.delete(id);

  Map<int, PhotoModel> getPhotos() {
    final map =
        box.toMap().map((key, value) => MapEntry<int, PhotoModel>(key, value));
    return map;
  }

  Future<void> close() => box.close();
}