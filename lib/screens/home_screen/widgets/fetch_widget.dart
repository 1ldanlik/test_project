import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../common/data_error_widget/data_error_widget.dart';
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
  Widget build(BuildContext context) => ValueListenableBuilder<FetchState>(
        valueListenable: fetchState,
        builder: (_, fetchState, __) {
          if (fetchState == FetchState.error) {
            return DataErrorWidget(
              onRetryErrorButtonTap: onRetryErrorButtonTap,
            );
          }

          return const LoadingIndicator();
        },
      );
}
