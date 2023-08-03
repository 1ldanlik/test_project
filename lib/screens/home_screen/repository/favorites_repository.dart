import '../../../domain/photo_model/photo_model.dart';
import '../../../utils/photo_hive.dart';

class FavoritesRepository {
  final PhotoHive _photoHive;

  FavoritesRepository(this._photoHive);

  Future<void> init() => _photoHive.init();

  Future<void> insertPhoto(PhotoModel photo) => _photoHive.setPhoto(photo);

  Map<int, PhotoModel> getPhotos() => _photoHive.getPhotos();

  Future<void> removePhoto(PhotoModel photo) => _photoHive.removePhoto(photo.id);

  Future<void> closeDb() => _photoHive.close();
}
