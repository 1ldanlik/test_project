import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../photo_model/photo_model.dart';

part 'photo_event.dart';

part 'photo_state.dart';

part 'photo_bloc.freezed.dart';

class PhotoBloc extends Bloc<PhotoEvent, PhotoState> {
  PhotoBloc()
      : super(PhotoState.base(
          elements: [
            PhotoModel(
              id: 2,
              url: 'https://via.placeholder.com/600/771796',
              title: 'reprehenderit est deserunt velit ipsam',
              albumId: 1,
              thumbnailUrl: 'https://via.placeholder.com/150/771796',
            ),
            PhotoModel(
              id: 3,
              url: 'https://via.placeholder.com/600/24f355',
              title: 'officia porro iure quia iusto qui ipsa ut modi',
              albumId: 1,
              thumbnailUrl: 'https://via.placeholder.com/600/24f355',
            ),
          ],
          favorites: [],
        )) {
    on<_GetPhotos>(_onGetPhotos);
    on<_AddToFavorites>(_onAddToFavorites);
    on<_RemoveFromFavorites>(_onRemoveFromFavorites);
  }

  Future<void> _onGetPhotos(_, Emitter emit) async {}

  void _onAddToFavorites(_AddToFavorites event, Emitter emit) {}

  void _onRemoveFromFavorites(_RemoveFromFavorites event, Emitter emit) {}
}
