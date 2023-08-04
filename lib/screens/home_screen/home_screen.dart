import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';

import '../../common/loading_indicator/loading_indicator.dart';
import '../../domain/photo_model/photo_model.dart';
import 'home_screen_wm.dart';
import 'widgets/photo_empty_widget.dart';
import 'widgets/photos_list_widget.dart';

class HomeScreen extends ElementaryWidget<HomeScreenWM> {
  const HomeScreen({
    super.key,
    WidgetModelFactory wmFactory = createHomeScreenWM,
  }) : super(wmFactory);

  @override
  Widget build(HomeScreenWM wm) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(text: 'Список'),
                Tab(text: 'Избранное'),
              ],
            ),
          ),
          body: Center(
            child: TabBarView(
              children: [
                EntityStateNotifierBuilder<List<PhotoModel>>(
                  listenableEntityState: wm.elements,
                  builder: (_, elements) {
                    if (elements == null || elements.isEmpty) {
                      return const PhotoEmptyWidget();
                    }

                    return RefreshIndicator(
                      onRefresh: wm.onRefreshElementsTab,
                      child: PhotosListWidget(
                        key: wm.pageOneKey,
                        photos: elements,
                        controller: wm.scrollController,
                        withInfinityScroll: true,
                        onFavoriteButtonPressed: wm.onFavoriteButtonPressed,
                      ),
                    );
                  },
                  loadingBuilder: (_, __) => const LoadingIndicator(),
                  errorBuilder: (_, __, ___) => const PhotoEmptyWidget(),
                ),
                EntityStateNotifierBuilder(
                  listenableEntityState: wm.favorites,
                  builder: (_, favorites) {
                    if (favorites == null || favorites.isEmpty) {
                      return const PhotoEmptyWidget();
                    }

                    return PhotosListWidget(
                      key: wm.pageTwoKey,
                      photos: favorites,
                      onFavoriteButtonPressed: wm.onDeletePhotoFromLocal,
                    );
                  },
                  loadingBuilder: (_, __) => const LoadingIndicator(),
                  errorBuilder: (_, __, ___) => const PhotoEmptyWidget(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
