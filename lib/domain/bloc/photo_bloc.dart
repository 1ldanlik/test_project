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
    on<_AddToFavorites>(_onAddToFavorites);
    on<_RemoveFromFavorites>(_onRemoveFromFavorites);

    add(const PhotoEvent.getPhotos());
  }

  Future<void> _onGetPhotos(_, Emitter emit) async {
    final photo = await _photoRepository.getPhoto();
    emit(PhotoState.base(elements: [photo], favorites: []));
  }

  void _onAddToFavorites(_AddToFavorites event, Emitter emit) {}

  void _onRemoveFromFavorites(_RemoveFromFavorites event, Emitter emit) {}
}
