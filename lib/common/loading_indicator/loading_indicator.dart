import 'package:flutter/material.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({
    Key? key,
    this.color = Colors.grey,
  }) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) => Center(
      child: CircularProgressIndicator(
        color: color,
      ),
    );
}
