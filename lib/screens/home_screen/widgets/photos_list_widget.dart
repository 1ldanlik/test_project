import 'package:flutter/material.dart';

import '../../../common/loading_indicator/loading_indicator.dart';
import '../../../domain/photo_model/photo_model.dart';
import '../../../theme/dimensions.dart';
import 'photo_card.dart';

class PhotosListWidget extends StatelessWidget {
  const PhotosListWidget({
    Key? key,
    required this.photos,
    required this.onFavoriteButtonPressed,
    this.controller,
    this.fetchWidget,
    this.withInfinityScroll = false,
  }) : super(key: key);

  final Widget? fetchWidget;
  final bool withInfinityScroll;
  final List<PhotoModel> photos;
  final ScrollController? controller;
  final void Function(PhotoModel) onFavoriteButtonPressed;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: controller,
      itemCount: withInfinityScroll ? photos.length + 1 : photos.length,
      itemBuilder: (_, index) {
        if (withInfinityScroll && index == photos.length) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: Dimensions.small),
            child: fetchWidget ?? const LoadingIndicator(),
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
            onFavoriteButtonPressed: onFavoriteButtonPressed,
          ),
        );
      },
    );
  }
}
