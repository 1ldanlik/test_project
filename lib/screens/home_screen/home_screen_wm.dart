import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';

import '../../data/photo_repository.dart';
import '../../domain/photo_model/photo_model.dart';
import '../../utils/photo_hive.dart';
import 'home_screen.dart';
import 'home_screen_model.dart';
import 'repository/favorites_repository.dart';

HomeScreenWM createHomeScreenWM(_) {
  final photoHive = PhotoHive();
  final favoritesRepository = FavoritesRepository(photoHive);
  final photoRepository = PhotoRepository();

  return HomeScreenWM(
    HomeScreenModel(
      photoRepository: photoRepository,
      favoritesRepository: favoritesRepository,
    ),
  );
}

/// WidgetModel для [HomeScreen].
class HomeScreenWM extends WidgetModel<HomeScreen, HomeScreenModel> {
  HomeScreenWM(super._model);

  late final ScrollController scrollController;
  final pageOneKey = const PageStorageKey<String>('pageOne');
  final pageTwoKey = const PageStorageKey<String>('pageTwo');

  ListenableState<EntityState<List<PhotoModel>>> get elements => model.elements;

  ListenableState<EntityState<List<PhotoModel>>> get favorites =>
      model.favorites;

  @override
  void initWidgetModel() {
    super.initWidgetModel();

    scrollController = ScrollController()..addListener(_fetchPhotos);
    model.initPhotos();
  }

  void onPhotoCardTap() => {};

  Future<void> onRefreshElementsTab() async {
    await Future.delayed(const Duration(seconds: 3));
    return model.getPhotos();
  }

  void onFavoriteButtonPressed(PhotoModel photo) => photo.isFavorite
      ? model.removePhotoFromLocal(photo)
      : model.setPhotoToLocal(photo);

  void onDeletePhotoFromLocal(PhotoModel photo) =>
      model.removePhotoFromLocal(photo);

  void _fetchPhotos() {
    if (scrollController.position.maxScrollExtent == scrollController.offset &&
        !model.isFetchingState) {
      model.fetchPhotos();
    }
  }

  @override
  void dispose() {
    scrollController
      ..removeListener(_fetchPhotos)
      ..dispose();
    super.dispose();
  }
}
