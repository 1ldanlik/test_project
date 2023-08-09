import 'package:hive/hive.dart';
import 'package:test_project/domain/photo_model/photo.dart';

class HiveKeys {
  static const FAVORITE_KEY = 'favorite_key';
}

class PhotoHive {
  late final Box<Photo> box;

  PhotoHive();

  Future<void> init() async {
    box = await Hive.openBox<Photo>(HiveKeys.FAVORITE_KEY);
  }

  Future<void> setPhoto(Photo photo) => box.put(photo.id, photo);

  Future<void> removePhoto(int id) => box.delete(id);

  List<Photo> getPhotos() {
    final list = box.values.toList();
    return list;
  }

  Future<void> close() => box.close();
}
