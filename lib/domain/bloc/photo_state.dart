part of 'photo_bloc.dart';

@freezed
class PhotoState with _$PhotoState {
  const factory PhotoState.base({
    required List<PhotoModel> elements,
    required List<PhotoModel> favorites,
  }) = _BasePhotoState;

  const factory PhotoState.error({
    required List<PhotoModel> elements,
    required List<PhotoModel> favorites,
    required Exception exception,
  }) = _ErrorPhotoState;

  const factory PhotoState.loading({
    required List<PhotoModel> elements,
    required List<PhotoModel> favorites,
  }) = _LoadingPhotoState;
}
