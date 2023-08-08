import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../domain/photo_model/photo_model.dart';
import '../../theme/dimensions.dart';

@RoutePage()
class InformationScreen extends StatelessWidget {
  static const String path = '/information';

  const InformationScreen({
    Key? key,
    required this.photo,
    required this.onFavoriteButtonTap,
  }) : super(key: key);

  final ValueListenable<PhotoModel> photo;
  final void Function(PhotoModel) onFavoriteButtonTap;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Детальная информация'),
          actions: [
            IconButton(
              onPressed: () => onFavoriteButtonTap(photo.value),
              icon: ValueListenableBuilder<PhotoModel>(
                valueListenable: photo,
                builder: (_, photo, __) {
                  return Icon(
                    photo.isFavorite ? Icons.star : Icons.star_border,
                  );
                }
              ),
            ),
          ],
        ),
        body: Center(
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    Image.network(
                      photo.value.url,
                      height: 300,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(
                      height: Dimensions.medium,
                    ),
                    Text(
                      '${photo.value.id} ${photo.value.title}',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      );
  }
}
