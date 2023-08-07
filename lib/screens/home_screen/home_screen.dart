import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import '../../common/loading_indicator/loading_indicator.dart';
import 'home_screen_wm.dart';
import 'widgets/photos_list_widget.dart';

import '../../domain/photo_model/photo_model.dart';
import 'widgets/photo_empty_widget.dart';

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
                    if (elements == null) {
                      return const PhotoEmptyWidget();
                    }

                    return RefreshIndicator(
                      onRefresh: () async {
                        wm.onRefreshElementsTab();
                      },
                      child: PhotosListWidget(
                        photos: elements,
                        controller: wm.scrollController,
                        withInfinityScroll: true,
                        onPhotoCardTap: wm.onPhotoCardTap,
                        onFavoriteButtonPressed: wm.onFavoriteButtonPressed,
                      ),
                    );
                  },
                  loadingBuilder: (_, __) => const LoadingIndicator(),
                  errorBuilder: (_, __, ___) => const PhotoEmptyWidget(),
                ),
                Container()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
