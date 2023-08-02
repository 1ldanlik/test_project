part of 'photo_bloc.dart';

@freezed
class PhotoState with _$PhotoState {
  const PhotoState._();

  const factory PhotoState.base({
    required List<PhotoModel> elements,
    required List<PhotoModel> favorites,
  }) = BasePhotoState;

  const factory PhotoState.error({
    required List<PhotoModel> elements,
    required List<PhotoModel> favorites,
    required Exception exception,
  }) = ErrorPhotoState;

  const factory PhotoState.loading({
    required List<PhotoModel> elements,
    required List<PhotoModel> favorites,
  }) = LoadingPhotoState;

  const factory PhotoState.fetching({
    required List<PhotoModel> elements,
    required List<PhotoModel> favorites,
  }) = FetchingPhotoState;
}
