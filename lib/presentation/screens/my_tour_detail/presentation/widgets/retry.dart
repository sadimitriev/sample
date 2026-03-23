import 'package:flutter/material.dart';
import 'package:sample/presentation/widgets/action_button.dart';

class Retry extends StatelessWidget {
  const Retry({
    super.key,
    this.error,
    required this.onRefresh,
  });

  final String? error;
  final VoidCallback onRefresh;

  @override
  Widget build(BuildContext context) => Center(
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            error ?? 'errors',
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 32.0),
          ActionButton.blue(
            buttonText: 'try_again',
            onPressed: onRefresh,
          ),
        ],
      ),
    ),
  );
}
