import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/photo_repository.dart';
import '../../../screens/home_screen/repository/favorites_repository.dart';
import '../../photo_model/photo_model.dart';

part 'photo_event.dart';

part 'photo_state.dart';

part 'photo_bloc.freezed.dart';

class PhotoBloc extends Bloc<PhotoEvent, PhotoState> {
  final PhotoRepository _photoRepository;
  final FavoritesRepository _favoritesRepository;

  PhotoBloc({
    required PhotoRepository photoRepository,
    required FavoritesRepository favoritesRepository,
  })  : _photoRepository = photoRepository,
        _favoritesRepository = favoritesRepository,
        super(const PhotoState.base(
            elements: [], favorites: [], favoritesMap: {})) {
    on<_GetPhotos>(_onGetPhotos);
    on<_FetchPhotos>(_onFetchPhotos);
    on<_RemovePhotoFromLocal>(_onRemovePhotoFromLocal);
    on<_SetPhotoToLocal>(_onSetPhotoToLocal);
    on<_GetPhotosFromLocal>(_onGetPhotosFromLocal);

    add(const PhotoEvent.getPhotos());
    _init();
  }

  final elementsIndexMap = <int, int>{};

  Future<void> _init() async {
    await _favoritesRepository.init();
    add(const PhotoEvent.getPhotosFromLocal());
  }

  @override
  Future<void> close() {
    _favoritesRepository.closeDb();
    return super.close();
  }

  Future<void> _onFetchPhotos(_, Emitter emit) async {
    emit(PhotoState.fetching(
        elements: state.elements, favorites: [], favoritesMap: {}));

    await Future.delayed(const Duration(seconds: 5));

    final list = state.elements.toList();
    final length = list.toList().length;

    for (int i = length; i < length + 10; i++) {
      final photo = await _photoRepository.getPhoto().then((e) => e.copyWith(id: i));
      list.add(photo);
      elementsIndexMap.addAll({photo.id: i});
    }

    emit(PhotoState.base(elements: list, favorites: [], favoritesMap: {}));
  }

  Future<void> _onGetPhotos(_, Emitter emit) async {
    emit(const PhotoState.loading(
        elements: [], favorites: [], favoritesMap: {}));

    final list = <PhotoModel>[];
    for (int i = 0; i < 10; i++) {
      final photo = await _photoRepository.getPhoto();
      list.add(photo.copyWith(id: i));
    }
    elementsIndexMap.clear();

    final map = {for (int i = 0; i < list.length; i++) list[i].id: i};

    elementsIndexMap.addAll(map);

    emit(PhotoState.base(elements: list, favorites: [], favoritesMap: {}));
  }

  Future<void> _onRemovePhotoFromLocal(
      _RemovePhotoFromLocal event, Emitter emit) async {
    emit(PhotoState.loading(
      elements: state.elements,
      favorites: [],
      favoritesMap: {},
    ));
    try {
      await _favoritesRepository.removePhoto(event.photo);
      _updateElements(
        photo: event.photo,
        isFavorite: false,
        emit: emit,
      );
    } on Exception catch (e) {
      emit(PhotoState.error(
        elements: [],
        favorites: [],
        favoritesMap: {},
        exception: e,
      ));
    }
  }

  Future<void> _onSetPhotoToLocal(_SetPhotoToLocal event, Emitter emit) async {
    emit(PhotoState.loading(
      elements: state.elements,
      favorites: [],
      favoritesMap: {},
    ));
    try {
      final photo = event.photo.copyWith(isFavorite: true);

      await _favoritesRepository.insertPhoto(photo);
      _updateElements(
        photo: event.photo,
        isFavorite: true,
        emit: emit,
      );
    } on Exception catch (e) {
      emit(PhotoState.error(
        elements: [],
        favorites: [],
        favoritesMap: {},
        exception: e,
      ));
    }
  }

  Future<void> _onGetPhotosFromLocal(_, Emitter emit) async {
    emit(PhotoState.loading(
      elements: state.elements,
      favorites: [],
      favoritesMap: {},
    ));
    try {
      final map = _favoritesRepository.getPhotos();
      final elements = state.elements.toList();
      final favorites = map.entries.map((e) {
        final index = elementsIndexMap[e.value.id];
        if (index != null) {
          elements[index] = e.value.copyWith(isFavorite: true);
        }
        return e.value;
      }).toList();

      emit(PhotoState.base(
          elements: elements, favorites: favorites, favoritesMap: map));
    } on Exception catch (e) {
      emit(PhotoState.error(
        elements: [],
        favorites: [],
        favoritesMap: {},
        exception: e,
      ));
    }
  }

  void _updateElements({
    required PhotoModel photo,
    required bool isFavorite,
    required Emitter emit,
  }) {
    final map = _favoritesRepository.getPhotos();
    final favorites = map.entries.map((e) => e.value).toList();
    final index = elementsIndexMap[photo.id];
    final elements = state.elements.toList();

    if (index != null) {
      elements[index] = photo.copyWith(isFavorite: isFavorite);
    }

    emit(PhotoState.base(
        elements: elements, favorites: favorites, favoritesMap: map));
  }
}
