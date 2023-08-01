import 'package:elementary/elementary.dart';
import 'package:test_project/screens/home_screen/home_screen_model.dart';

import '../../domain/bloc/photo_bloc.dart';
import 'home_screen.dart';

class HomeScreenWM extends WidgetModel<HomeScreen, HomeScreenModel> {
  HomeScreenWM(super.model);

  void onRefreshElementsTab() => model.getPhotos();
  void onPhotoCardTap() => model.getPhotos();
  void onFavoriteButtonPressed(int photoId) => model.getPhotos();
}

HomeScreenWM createHomeScreenWM(_) {
  final photoBloc = PhotoBloc();

  return HomeScreenWM(
    HomeScreenModel(photoBloc: photoBloc),
  );
}
