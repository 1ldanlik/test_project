import 'package:flutter/material.dart';

class DataErrorWidget extends StatelessWidget {
  const DataErrorWidget({
    Key? key,
    required this.onRetryErrorButtonTap,
  }) : super(key: key);

  final VoidCallback onRetryErrorButtonTap;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('Ошибка загрузки данных'),
          TextButton(
            onPressed: onRetryErrorButtonTap,
            child: const Text('Еще раз'),
          )
        ],
      ),
    );
  }
}
