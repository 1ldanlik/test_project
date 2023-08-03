import 'dart:async';

import 'package:elementary/elementary.dart';

import '../../domain/bloc/photo_bloc/photo_bloc.dart';
import '../../domain/photo_model/photo_model.dart';

class HomeScreenModel extends ElementaryModel {
  final PhotoBloc _photoBloc;

  final _elements = EntityStateNotifier<List<PhotoModel>>();
  final _favorites = EntityStateNotifier<List<PhotoModel>>();

  bool get isFetchingState => _photoBloc.state is FetchingPhotoState;

  ListenableState<EntityState<List<PhotoModel>>> get elements => _elements;

  ListenableState<EntityState<List<PhotoModel>>> get favorites => _favorites;

  late final StreamSubscription<PhotoState> _photoSubscription;

  HomeScreenModel({required PhotoBloc photoBloc}) : _photoBloc = photoBloc {
    _photoSubscription = _photoBloc.stream.listen((state) {
      state.map(
        base: (state) {
          _elements.content(state.elements);
          _favorites.content(state.favorites);
        },
        error: (state) {
          _elements.error(state.exception, []);
          _favorites.error(state.exception, []);
        },
        loading: (state) {
          _elements.loading([]);
          _favorites.loading([]);
        },
        fetching: (_) {},
      );
    });
  }

  void fetchPhotos() => _photoBloc.add(const PhotoEvent.fetchPhotos());

  void getPhotos() => _photoBloc.add(const PhotoEvent.getPhotos());

  void savePhotoToLocal(PhotoModel photo) =>
      _photoBloc.add(PhotoEvent.setPhotoToLocal(photo: photo));

  void deletePhotoFromLocal(PhotoModel photo) => _photoBloc
      .add(PhotoEvent.removePhotoFromLocal(photo: photo));

  void getPhotosFromLocal() =>
      _photoBloc.add(const PhotoEvent.getPhotosFromLocal());

  @override
  void dispose() {
    _photoSubscription.cancel();
    _photoBloc.close();

    super.dispose();
  }
}
