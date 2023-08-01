import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/bloc/photo_bloc.dart';
import '../../../theme/dimensions.dart';
import 'photo_card.dart';

class ElementsTab extends StatelessWidget {
  const ElementsTab({
    Key? key,
    required this.onPhotoCardTap,
    required this.onRefreshElementsTab,
    required this.onFavoriteButtonPressed,
  }) : super(key: key);

  final VoidCallback onPhotoCardTap;
  final VoidCallback onRefreshElementsTab;
  final void Function(int) onFavoriteButtonPressed;

  @override
  Widget build(BuildContext context) => BlocBuilder<PhotoBloc, PhotoState>(
        builder: (context, state) {
          return RefreshIndicator(
            onRefresh: () async {
              onRefreshElementsTab();
            },
            child: ListView.builder(
                itemCount: state.elements.length,
                itemBuilder: (_, index) {
                  final element = state.elements[index];

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
        },
      );
}
