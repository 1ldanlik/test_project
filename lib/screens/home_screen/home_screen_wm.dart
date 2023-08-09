import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:test_project/core/service/dio/dio_service.dart';

import '../../data/photo_repository.dart';
import '../../domain/photo_model/photo.dart';
import '../../routing/service/app_router.dart';
import '../../utils/photo_hive.dart';
import 'home_screen.dart';
import 'home_screen_model.dart';
import 'repository/favorites_repository.dart';
import 'widgets/fetch_widget.dart';

HomeScreenWM createHomeScreenWM(_) {
  final dio = DioService.createClient();
  final photoRepository = PhotoRepository(dio);
  final photoHive = PhotoHive();
  final favoritesRepository = FavoritesRepository(photoHive);

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

  ValueListenable<FetchState> get fetchState => model.fetchState;

  ListenableState<EntityState<List<Photo>>> get elements => model.elements;

  ListenableState<EntityState<List<Photo>>> get favorites =>
      model.favorites;

  @override
  void initWidgetModel() {
    super.initWidgetModel();

    scrollController = ScrollController()..addListener(_fetchPhotos);
    model.initPhotos();
  }

  Future<void> onRefreshElementsTab() => model.getPhotos();

  void onFavoriteButtonPressed(Photo photo) => photo.isFavorite
      ? model.removePhotoFromLocal(photo)
      : model.setPhotoToLocal(photo);

  void onPhotoCardTap(Photo photo) {
    model.pickPhoto(photo);

    AutoRouter.of(context).push(InformationRoute(
      photo: model.pickedPhoto,
      onFavoriteButtonTap: onFavoriteButtonPressed,
    ));
  }

  Future<void> onRetryFetchElements() => model.fetchPhotos();

  Future<void> onRetryGetElements() => model.retryGetPhotos();

  void onRetryGetFavorites() => model.getPhotosFromLocal();

  void _fetchPhotos() {
    if (scrollController.position.maxScrollExtent == scrollController.offset &&
        !model.isFetchingState &&
        fetchState.value == FetchState.base) {
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
