import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/photo_repository.dart';
import '../photo_model/photo_model.dart';

part 'photo_event.dart';

part 'photo_state.dart';

part 'photo_bloc.freezed.dart';

class PhotoBloc extends Bloc<PhotoEvent, PhotoState> {
  final PhotoRepository _photoRepository;

  PhotoBloc({required PhotoRepository photoRepository})
      : _photoRepository = photoRepository,
        super(const PhotoState.base(elements: [], favorites: [])) {
    on<_GetPhotos>(_onGetPhotos);
    on<_FetchPhotos>(_onFetchPhotos);
    on<_AddToFavorites>(_onAddToFavorites);
    on<_RemoveFromFavorites>(_onRemoveFromFavorites);

    add(const PhotoEvent.getPhotos());
  }

  Future<void> _onFetchPhotos(_, Emitter emit) async {
    final list = state.elements.toList();
    final length = list.toList().length;

    for (int i = length; i < length + 10; i++) {
      final photo = await _photoRepository.getPhoto();
      list.add(photo);
    }
    emit(PhotoState.base(elements: list, favorites: []));
  }

  Future<void> _onGetPhotos(_, Emitter emit) async {
    final list = <PhotoModel>[];
    for (int i = 0; i < 10; i++) {
      final photo = await _photoRepository.getPhoto();
      list.add(photo);
    }
    emit(PhotoState.base(elements: list, favorites: []));
  }

  void _onAddToFavorites(_AddToFavorites event, Emitter emit) {}

  void _onRemoveFromFavorites(_RemoveFromFavorites event, Emitter emit) {}
}
