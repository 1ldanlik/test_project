part of 'photo_bloc.dart';

@freezed
class PhotoState with _$PhotoState {
  const PhotoState._();

  const factory PhotoState.base({
    required List<PhotoModel> elements,
    required List<PhotoModel> favorites,
    required Map<int, PhotoModel> favoritesMap,
  }) = BasePhotoState;

  const factory PhotoState.error({
    required List<PhotoModel> elements,
    required List<PhotoModel> favorites,
    required Map<int, PhotoModel> favoritesMap,
    required Exception exception,
  }) = ErrorPhotoState;

  const factory PhotoState.loading({
    required List<PhotoModel> elements,
    required List<PhotoModel> favorites,
    required Map<int, PhotoModel> favoritesMap,
  }) = LoadingPhotoState;

  const factory PhotoState.fetching({
    required List<PhotoModel> elements,
    required List<PhotoModel> favorites,
    required Map<int, PhotoModel> favoritesMap,
  }) = FetchingPhotoState;
}
