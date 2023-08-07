part of 'photo_bloc.dart';

@freezed
class PhotoEvent with _$PhotoEvent {
  const factory PhotoEvent.getPhotos() = _GetPhotos;

  const factory PhotoEvent.fetchPhotos() = _FetchPhotos;

  const factory PhotoEvent.addToFavorites() = _AddToFavorites;

  const factory PhotoEvent.removeFromFavorites() = _RemoveFromFavorites;
}
