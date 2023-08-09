import '../../../domain/photo_model/photo.dart';
import '../../../utils/photo_hive.dart';

class FavoritesRepository {
  final PhotoHive _photoHive;

  FavoritesRepository(this._photoHive);

  Future<void> initDb() => _photoHive.init();

  Future<void> setPhoto(Photo photo) => _photoHive.setPhoto(photo);

  List<Photo> getPhotos() => _photoHive.getPhotos();

  Future<void> removePhoto(Photo photo) => _photoHive.removePhoto(photo.id);

  Future<void> closeDb() => _photoHive.close();
}
