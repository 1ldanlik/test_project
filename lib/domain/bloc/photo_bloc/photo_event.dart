part of 'photo_bloc.dart';

@freezed
class PhotoEvent with _$PhotoEvent {
  const factory PhotoEvent.getPhotos() = _GetPhotos;

  const factory PhotoEvent.fetchPhotos() = _FetchPhotos;

  const factory PhotoEvent.getPhotosFromLocal() = _GetPhotosFromLocal;

  const factory PhotoEvent.removePhotoFromLocal({required PhotoModel photo}) =
      _RemovePhotoFromLocal;

  const factory PhotoEvent.setPhotoToLocal({required PhotoModel photo}) =
      _SetPhotoToLocal;
}
