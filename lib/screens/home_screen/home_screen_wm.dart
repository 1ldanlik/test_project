import 'package:elementary/elementary.dart';
import 'package:test_project/data/photo_repository.dart';
import 'package:test_project/screens/home_screen/home_screen_model.dart';

import '../../domain/bloc/photo_bloc.dart';
import '../../domain/photo_model/photo_model.dart';
import 'home_screen.dart';

class HomeScreenWM extends WidgetModel<HomeScreen, HomeScreenModel> {
  HomeScreenWM(super.model);

  ListenableState<EntityState<List<PhotoModel>>> get elements => model.elements;

  void onRefreshElementsTab() => model.getPhotos();

  void onPhotoCardTap() => model.getPhotos();

  void onFavoriteButtonPressed(int photoId) => model.getPhotos();
}

HomeScreenWM createHomeScreenWM(_) {
  final photoRepository = PhotoRepository();
  final photoBloc = PhotoBloc(photoRepository: photoRepository);

  return HomeScreenWM(
    HomeScreenModel(photoBloc: photoBloc),
  );
}
