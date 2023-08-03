import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';

import '../../data/photo_repository.dart';
import '../../domain/bloc/photo_bloc/photo_bloc.dart';
import '../../domain/photo_model/photo_model.dart';
import '../../utils/photo_hive.dart';
import 'home_screen.dart';
import 'home_screen_model.dart';
import 'repository/favorites_repository.dart';

class HomeScreenWM extends WidgetModel<HomeScreen, HomeScreenModel> {
  HomeScreenWM(super.model);

  late final ScrollController scrollController;

  ListenableState<EntityState<List<PhotoModel>>> get elements => model.elements;

  ListenableState<EntityState<List<PhotoModel>>> get favorites =>
      model.favorites;

  @override
  void initWidgetModel() {
    super.initWidgetModel();

    scrollController = ScrollController()..addListener(_fetchPhotos);
  }

  void onPhotoCardTap() => model.getPhotos();

  void onRefreshElementsTab() => model.getPhotos();

  void onFavoriteButtonPressed(PhotoModel photo) => photo.isFavorite
      ? model.deletePhotoFromLocal(photo)
      : model.savePhotoToLocal(photo);

  void onDeletePhotoFromLocal(PhotoModel photo) =>
      model.deletePhotoFromLocal(photo);

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

HomeScreenWM createHomeScreenWM(_) {
  final photoHive = PhotoHive();
  final favoritesRepository = FavoritesRepository(photoHive);
  final photoRepository = PhotoRepository();
  final photoBloc = PhotoBloc(
      photoRepository: photoRepository,
      favoritesRepository: favoritesRepository);

  return HomeScreenWM(
    HomeScreenModel(
      photoBloc: photoBloc,
    ),
  );
}
