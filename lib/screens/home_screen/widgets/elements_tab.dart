import 'package:flutter/material.dart';

import '../../../domain/photo_model/photo_model.dart';
import '../../../theme/dimensions.dart';
import 'photo_card.dart';

class ElementsTab extends StatelessWidget {
  const ElementsTab({
    Key? key,
    required this.elements,
    required this.onPhotoCardTap,
    required this.onRefreshElementsTab,
    required this.onFavoriteButtonPressed,
  }) : super(key: key);

  final List<PhotoModel> elements;
  final VoidCallback onPhotoCardTap;
  final VoidCallback onRefreshElementsTab;
  final void Function(int) onFavoriteButtonPressed;

  @override
  Widget build(BuildContext context) => RefreshIndicator(
        onRefresh: () async {
          onRefreshElementsTab();
        },
        child: ListView.builder(
            itemCount: elements.length,
            itemBuilder: (_, index) {
              final element = elements[index];

              return Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: Dimensions.small,
                  horizontal: Dimensions.medium,
                ),
                child: PhotoCard(
                  photo: element,
                  onPhotoCardTap: onPhotoCardTap,
                  onFavoriteButtonPressed: onFavoriteButtonPressed,
                ),
              );
            }),
      );
}
