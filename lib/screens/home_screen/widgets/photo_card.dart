import 'package:flutter/material.dart';

import '../../../domain/photo_model/photo_model.dart';
import '../../../theme/dimensions.dart';

class PhotoCard extends StatelessWidget {
  const PhotoCard({
    Key? key,
    required this.photo,
    required this.onPhotoCardTap,
    required this.onFavoriteButtonPressed,
  }) : super(key: key);

  final PhotoModel photo;
  final void Function(PhotoModel) onPhotoCardTap;
  final void Function(PhotoModel) onFavoriteButtonPressed;

  @override
  Widget build(BuildContext context) {
    const borderRadius = 26.0;

    return GestureDetector(
      onTap: () => onPhotoCardTap(photo),
      child: Container(
        height: 150,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(borderRadius)),
          color: Theme.of(context).primaryColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(Dimensions.small),
          child: LayoutBuilder(builder: (context, constraints) {
            final maxWidth = constraints.maxWidth;
            final imageWidth = maxWidth * 0.4;
            final imageHeight = constraints.maxHeight;

            return Row(
              children: [
                ClipRRect(
                  borderRadius:
                      const BorderRadius.all(Radius.circular(borderRadius)),
                  child: Image.network(
                    photo.url,
                    width: imageWidth,
                    loadingBuilder: (_, child, loadingProgress) {
                      if (loadingProgress == null) return child;

                      return Center(
                        child: CircularProgressIndicator(
                          value: loadingProgress.expectedTotalBytes != null
                              ? loadingProgress.cumulativeBytesLoaded /
                                  loadingProgress.expectedTotalBytes!
                              : null,
                        ),
                      );
                    },
                    errorBuilder: (_, __, ___) => Image.asset(
                      'assets/default_image.jpg',
                      width: imageWidth,
                      height: imageHeight,
                      fit: BoxFit.cover,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  width: Dimensions.medium,
                ),
                SizedBox(
                  width: maxWidth * 0.38,
                  child: Text('${photo.id} ' + photo.title),
                ),
                IconButton(
                  onPressed: () => onFavoriteButtonPressed(photo),
                  icon: Icon(
                    photo.isFavorite ? Icons.star : Icons.star_border,
                  ),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
