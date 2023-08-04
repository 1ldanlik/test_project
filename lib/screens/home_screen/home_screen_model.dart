import 'dart:async';

import 'package:elementary/elementary.dart';

import '../../data/photo_repository.dart';
import '../../domain/photo_model/photo_model.dart';
import 'repository/favorites_repository.dart';

class HomeScreenModel extends ElementaryModel {
  final PhotoRepository _photoRepository;
  final FavoritesRepository _favoritesRepository;

  final _elements = EntityStateNotifier<List<PhotoModel>>();
  final _favorites = EntityStateNotifier<List<PhotoModel>>();

  final _elementsIndexMap = <int, int>{};
  final _favoritesMap = <int, PhotoModel>{};

  bool get isFetchingState => _elements.value?.isLoading ?? false;

  ListenableState<EntityState<List<PhotoModel>>> get elements => _elements;

  ListenableState<EntityState<List<PhotoModel>>> get favorites => _favorites;

  HomeScreenModel({
    required PhotoRepository photoRepository,
    required FavoritesRepository favoritesRepository,
  })  : _photoRepository = photoRepository,
        _favoritesRepository = favoritesRepository;

  Future<void> fetchPhotos() async {
    try {
      await Future.delayed(const Duration(seconds: 3));

      final elements = _elements.value?.data?.toList() ?? [];
      final length = elements.toList().length;

      for (int i = length; i < length + 10; i++) {
        final photo = await _photoRepository.getPhoto().then((e) => e.copyWith(
              id: i,
              isFavorite: _favoritesMap[i] == null ? false : true,
            ));

        elements.add(photo);
        _elementsIndexMap.addAll({photo.id: i});
      }
      _elements.content(elements);
    } on Exception catch (e) {
      _elements.error(e, []);
    }
  }

  void getPhotosFromLocal() {
    final favorites = _favoritesRepository.getPhotos();
    final elements = _elements.value?.data?.toList() ?? [];
    final map = <int, PhotoModel>{};

    for (var fav in favorites) {
      final index = _elementsIndexMap[fav.id];
      if (index != null) {
        elements[index] = fav.copyWith(isFavorite: true);
      }
      map.addAll({fav.id: fav});
    }

    _favoritesMap.addAll(map);
    _elements.content(elements);
    _favorites.content(favorites);
  }

  Future<void> setPhotoToLocal(PhotoModel photo) async {
    try {
      final element = photo.copyWith(isFavorite: true);

      await _favoritesRepository.setPhoto(element);
      _updateElements(
        photo: photo,
        isFavorite: true,
      );
    } on Exception catch (e) {
      _favorites.error(e, []);
    }
  }

  Future<void> removePhotoFromLocal(PhotoModel photo) async {
    try {
      await _favoritesRepository.removePhoto(photo);
      _updateElements(
        photo: photo,
        isFavorite: false,
      );
    } on Exception catch (e) {
      _favorites.error(e, []);
    }
  }

  Future<void> initPhotos() async {
    _elements.loading([]);
    await _favoritesRepository.initDb();
    await getPhotos();
    getPhotosFromLocal();
  }

  Future<void> getPhotos() async {
    try {
      final list = <PhotoModel>[];
      for (int i = 0; i < 10; i++) {
        final photo = await _photoRepository.getPhoto();

        list.add(photo.copyWith(id: i));
      }
      _elementsIndexMap.clear();

      final map = {for (int i = 0; i < list.length; i++) list[i].id: i};

      _elementsIndexMap.addAll(map);

      _elements.content(list);
    } on Exception catch (e) {
      _elements.error(e, []);
    }
  }

  void _updateElements({required PhotoModel photo, required bool isFavorite}) {
    final favorites = _favoritesRepository.getPhotos();
    final map = {for (var favorite in favorites) favorite.id: favorite};
    final index = _elementsIndexMap[photo.id];
    final elements = _elements.value?.data?.toList() ?? [];

    if (index != null) {
      elements[index] = photo.copyWith(isFavorite: isFavorite);
    }

    _favoritesMap.addAll(map);
    _elements.content(elements);
    _favorites.content(favorites);
  }

  @override
  void dispose() {
    _favoritesRepository.closeDb();

    super.dispose();
  }
}
