import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:test_project/common/loading_indicator/loading_indicator.dart';
import 'package:test_project/screens/home_screen/home_screen_wm.dart';
import 'package:test_project/screens/home_screen/widgets/elements_tab.dart';

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

                      return ElementsTab(
                        elements: elements,
                        onPhotoCardTap: wm.onPhotoCardTap,
                        onRefreshElementsTab: wm.onRefreshElementsTab,
                        onFavoriteButtonPressed: wm.onFavoriteButtonPressed,
                      );
                    },
                  loadingBuilder: (_,__) => const LoadingIndicator(),
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
