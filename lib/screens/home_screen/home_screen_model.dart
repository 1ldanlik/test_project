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

  final _elementsIndexMap = <int, int>{};
  final _favoritesMap = <int, PhotoModel>{};

  bool get isFetchingState => _elements.value?.isLoading ?? false;

  ValueListenable<FetchState> get fetchState => _fetchState;

  ListenableState<EntityState<List<PhotoModel>>> get elements => _elements;

  ListenableState<EntityState<List<PhotoModel>>> get favorites => _favorites;

  HomeScreenModel({
    required PhotoRepository photoRepository,
    required FavoritesRepository favoritesRepository,
  })  : _photoRepository = photoRepository,
        _favoritesRepository = favoritesRepository;

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

  Future<void> fetchPhotos() async {
    _fetchState.value = FetchState.loading;
    await Future.delayed(const Duration(seconds: 3));

    final elements = _elements.value?.data ?? [];
    final list = elements.toList();
    final length = list.length;
    const fetchElementsAmount = 10;

    try {
      await Future.wait(Iterable.generate(fetchElementsAmount, (i) {
        final index = i + length;
        return _photoRepository.getPhoto().then<PhotoModel?>((photo) {
          //TODO remove this "id: index" on create repository
          photo = photo.copyWith(
            id: index,
            isFavorite: _favoritesMap[index] == null ? false : true,
          );
          list.add(photo);
          _elementsIndexMap.addAll({photo.id: index});

          return photo;
        });
      }));
    } on Exception catch (_) {
      _fetchState.value = FetchState.error;
    }

    _elements.content(list);
    _fetchState.value = FetchState.base;
  }

  Future<void> getPhotos() async {
    try {
      final map = <int, int>{};
      final list = <PhotoModel>[];
      const getElementsAmount = 10;

      _elementsIndexMap.clear();

      await Future.wait(Iterable.generate(
        getElementsAmount,
        (index) => _photoRepository.getPhoto().then((value) {
          //TODO remove this row on create repository
          final photo = value.copyWith(id: index);

          list.add(photo);
          map.addAll({photo.id: index});
        }),
      ));

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
