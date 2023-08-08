import 'dart:async';

import 'package:elementary/elementary.dart';
import 'package:flutter/foundation.dart';

import '../../data/photo_repository.dart';
import '../../domain/photo_model/photo_model.dart';
import 'repository/favorites_repository.dart';
import 'widgets/fetch_widget.dart';

class HomeScreenModel extends ElementaryModel {
  final PhotoRepository _photoRepository;
  final FavoritesRepository _favoritesRepository;

  final _elements = EntityStateNotifier<List<PhotoModel>>();
  final _favorites = EntityStateNotifier<List<PhotoModel>>();

  final _fetchState = ValueNotifier<FetchState>(FetchState.base);
  final _pickedPhoto = ValueNotifier<PhotoModel>(PhotoModel.empty());

  final _elementsIndexMap = <int, int>{};
  final _favoritesMap = <int, PhotoModel>{};

  bool get isFetchingState => _elements.value?.isLoading ?? false;

  ValueListenable<FetchState> get fetchState => _fetchState;

  ValueListenable<PhotoModel> get pickedPhoto => _pickedPhoto;

  ListenableState<EntityState<List<PhotoModel>>> get elements => _elements;

  ListenableState<EntityState<List<PhotoModel>>> get favorites => _favorites;

  HomeScreenModel({
    required PhotoRepository photoRepository,
    required FavoritesRepository favoritesRepository,
  })  : _photoRepository = photoRepository,
        _favoritesRepository = favoritesRepository;

  void getPhotosFromLocal() {
    final favorites = _favoritesRepository.getPhotos();

    _favoritesMap.clear();

    for (var fav in favorites) {
      _favoritesMap.addAll({fav.id: fav});
    }

    _favorites.content(favorites);
  }

  Future<void> setPhotoToLocal(PhotoModel photo) async {
    try {
      final element = photo.copyWith(isFavorite: true);
      const isFavorite = true;

      await _favoritesRepository.setPhoto(element);
      _updateElements(
        photo: photo,
        isFavorite: isFavorite,
      );
      if (photo.id == _pickedPhoto.value.id) {
        _updatePickedPhotoFavoriteState(isFavorite);
      }
    } on Exception catch (e) {
      _favorites.error(e, []);
    }
  }

  Future<void> removePhotoFromLocal(PhotoModel photo) async {
    try {
      await _favoritesRepository.removePhoto(photo);

      const isFavorite = false;

      _updateElements(
        photo: photo,
        isFavorite: isFavorite,
      );
      if (photo.id == _pickedPhoto.value.id) {
        _updatePickedPhotoFavoriteState(isFavorite);
      }
    } on Exception catch (e) {
      _favorites.error(e, []);
    }
  }

  Future<void> initPhotos() async {
    _elements.loading([]);
    await Future.delayed(const Duration(seconds: 3));
    await _favoritesRepository.initDb();
    getPhotosFromLocal();
    await getPhotos();
  }

  Future<void> fetchPhotos() async {
    _fetchState.value = FetchState.loading;
    await Future.delayed(const Duration(seconds: 3));

    final elements = _elements.value?.data ?? [];
    final list = elements.toList();
    const fetchElementsAmount = 10;

    try {
      await _getData(photos: list, getElementsAmount: fetchElementsAmount);

      _elements.content(list);
      _fetchState.value = FetchState.base;
    } on Exception catch (_) {
      _fetchState.value = FetchState.error;
    }
  }

  Future<void> getPhotos() async {
    try {
      final list = <PhotoModel>[];
      const getElementsAmount = 10;

      _elementsIndexMap.clear();

      await _getData(photos: list, getElementsAmount: getElementsAmount);

      _elements.content(list);
    } on Exception catch (e) {
      _elements.error(e, []);
    }
  }

  Future<void> _getData({
    required int getElementsAmount,
    required List<PhotoModel> photos,
  }) async {
    final length = photos.length;

    await Future.wait(Iterable.generate(getElementsAmount, (i) {
      final index = i + length;

      return _photoRepository.getPhoto().then((photo) {
        //TODO remove this "id: index" on create repository
        photo = photo.copyWith(
          id: index,
          isFavorite: _favoritesMap[index] != null,
        );
        photos.add(photo);
        _elementsIndexMap.addAll({photo.id: index});
      });
    }));
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

  void _updatePickedPhotoFavoriteState(bool isFavorite) {
    if (_pickedPhoto.value.isEmpty) return;

    _pickedPhoto.value = _pickedPhoto.value.copyWith(isFavorite: isFavorite);
  }

  void pickPhoto(PhotoModel photo) => _pickedPhoto.value = photo;

  @override
  void dispose() {
    _favoritesRepository.closeDb();

    super.dispose();
  }
}
