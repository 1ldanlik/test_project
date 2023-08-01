import 'package:elementary/elementary.dart';

import '../../domain/bloc/photo_bloc.dart';

class HomeScreenModel extends ElementaryModel {
  final PhotoBloc _photoBloc;

  HomeScreenModel({required PhotoBloc photoBloc}) : _photoBloc = photoBloc;

  void getPhotos() => _photoBloc.add(const PhotoEvent.getPhotos());
}