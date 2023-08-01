import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_project/screens/home_screen/home_screen_wm.dart';
import 'package:test_project/screens/home_screen/widgets/elements_tab.dart';

import '../../domain/bloc/photo_bloc.dart';

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
            child: BlocProvider(
              create: (context) => PhotoBloc(),
              child: TabBarView(
                children: [
                  ElementsTab(
                    onPhotoCardTap: wm.onPhotoCardTap,
                    onRefreshElementsTab: wm.onRefreshElementsTab,
                    onFavoriteButtonPressed: wm.onFavoriteButtonPressed,
                  ),
                  Container()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
