import 'package:flutter/material.dart';

import '../../../common/loading_indicator/loading_indicator.dart';
import '../../../domain/photo_model/photo_model.dart';
import '../../../theme/dimensions.dart';
import 'photo_card.dart';

class PhotosListWidget extends StatelessWidget {
  const PhotosListWidget({
    Key? key,
    required this.photos,
    required this.onPhotoCardTap,
    required this.onFavoriteButtonPressed,
    this.controller,
    this.withInfinityScroll = false,
  }) : super(key: key);

  final bool withInfinityScroll;
  final List<PhotoModel> photos;
  final VoidCallback onPhotoCardTap;
  final void Function(PhotoModel) onFavoriteButtonPressed;
  final ScrollController? controller;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: controller,
      itemCount: withInfinityScroll ? photos.length + 1 : photos.length,
      itemBuilder: (_, index) {
        if (withInfinityScroll && index == photos.length) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: Dimensions.small),
            child: LoadingIndicator(),
          );
        }

        final photo = photos[index];
        return Padding(
          padding: const EdgeInsets.symmetric(
            vertical: Dimensions.small,
            horizontal: Dimensions.medium,
          ),
          child: PhotoCard(
            photo: photo,
            onPhotoCardTap: onPhotoCardTap,
            onFavoriteButtonPressed: onFavoriteButtonPressed,
          ),
        );
      },
    );
  }
}
