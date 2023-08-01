import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';

import '../../data/photo_repository.dart';
import '../../domain/bloc/photo_bloc.dart';
import '../../domain/photo_model/photo_model.dart';
import 'home_screen.dart';
import 'home_screen_model.dart';

class HomeScreenWM extends WidgetModel<HomeScreen, HomeScreenModel> {
  HomeScreenWM(super.model);

  late final ScrollController scrollController;

  @override
  void initWidgetModel() {
    super.initWidgetModel();

    scrollController = ScrollController()..addListener(_fetchPhotos);
  }

  ListenableState<EntityState<List<PhotoModel>>> get elements => model.elements;

  void onPhotoCardTap() => model.getPhotos();

  void onRefreshElementsTab() => model.getPhotos();

  void onFavoriteButtonPressed(int photoId) => model.getPhotos();

  void _fetchPhotos() {
    if (scrollController.position.maxScrollExtent == scrollController.offset) {
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
  final photoRepository = PhotoRepository();
  final photoBloc = PhotoBloc(photoRepository: photoRepository);

  return HomeScreenWM(
    HomeScreenModel(photoBloc: photoBloc),
  );
}
