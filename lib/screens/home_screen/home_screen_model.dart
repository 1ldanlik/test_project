import 'dart:async';

import 'package:elementary/elementary.dart';
import 'package:flutter/foundation.dart';

import '../../domain/bloc/photo_bloc.dart';
import '../../domain/photo_model/photo_model.dart';

class HomeScreenModel extends ElementaryModel {
  final PhotoBloc _photoBloc;

  final _favorites = ValueNotifier<List<PhotoModel>>([]);
  final _elements = EntityStateNotifier<List<PhotoModel>>();

  bool get isFetchingState => _photoBloc.state is FetchingPhotoState;

  ValueListenable<List<PhotoModel>> get favorites => _favorites;

  ListenableState<EntityState<List<PhotoModel>>> get elements => _elements;

  late final StreamSubscription<PhotoState> _photoSubscription;

  HomeScreenModel({required PhotoBloc photoBloc}) : _photoBloc = photoBloc {
    _photoSubscription = _photoBloc.stream.listen((state) {
      state.map(
        base: (state) {
          _elements.content(state.elements);
        },
        error: (state) {
          _elements.error(state.exception, []);
        },
        loading: (state) {
          _elements.loading([]);
        },
        fetching: (_) {},
      );
    });
  }

  void fetchPhotos() => _photoBloc.add(const PhotoEvent.fetchPhotos());

  void getPhotos() => _photoBloc.add(const PhotoEvent.getPhotos());

  @override
  void dispose() {
    _photoSubscription.cancel();

    super.dispose();
  }
}
