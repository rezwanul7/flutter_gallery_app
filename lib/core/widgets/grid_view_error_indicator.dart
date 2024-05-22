import 'package:flutter/material.dart';

class InfiniteScrollErrorIndicator extends StatelessWidget {
  final VoidCallback onTryAgain;
  final bool displayMessage;

  const InfiniteScrollErrorIndicator(
      {super.key, required this.onTryAgain, this.displayMessage = true});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Visibility(
              visible: displayMessage,
              child: Text(
                'Something Went Wrong!',
                style: Theme.of(context).textTheme.titleMedium,
              )),
          const SizedBox(height: 8),
          FilledButton(
            onPressed: onTryAgain,
            child: const Text('Retry'),
          ),
        ],
      ),
    );
  }
}
