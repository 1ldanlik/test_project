import 'package:flutter/material.dart';

import '../../domain/photo_model/photo_model.dart';
import '../../theme/dimensions.dart';

class InformationScreen extends StatelessWidget {
  const InformationScreen({
    Key? key,
    required this.extra,
  }) : super(key: key);

  final Object? extra;

  @override
  Widget build(BuildContext context) {
    if (extra is! PhotoModel) {
      return const SizedBox.shrink();
    }

    final photoModel = extra as PhotoModel;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Детальная информация'),
      ),
      body: Center(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Image.network(
                    photoModel.url,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: Dimensions.medium,),
                  Text(photoModel.title, style: Theme.of(context).textTheme.bodyLarge,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
