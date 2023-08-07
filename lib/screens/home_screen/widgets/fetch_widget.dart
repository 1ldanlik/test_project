import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../common/loading_indicator/loading_indicator.dart';

enum FetchState {
  base,
  loading,
  error,
}

class FetchWidget extends StatelessWidget {
  const FetchWidget({
    Key? key,
    required this.fetchState,
    required this.onRetryErrorButtonTap,
  }) : super(key: key);

  final VoidCallback onRetryErrorButtonTap;
  final ValueListenable<FetchState> fetchState;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<FetchState>(
      valueListenable: fetchState,
      builder: (_, fetchState, __) {
        if (fetchState == FetchState.error) {
          return Column(
            children: [
              const Text('Ошибка загрузки данных'),
              TextButton(
                onPressed: onRetryErrorButtonTap,
                child: const Text('Еще раз'),
              )
            ],
          );
        }

        return const LoadingIndicator();
      },
    );
  }
}
