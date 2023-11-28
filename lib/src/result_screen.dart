import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ResultScreen extends ConsumerWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        const Text('Results'),
        const SizedBox(height: 20),
        ListTile(
          leading: const Placeholder(),
          isThreeLine: true,
          title: const Text(
            'data',
          ),
          subtitle: Column(
            children: [
              const Row(
                children: [
                  Text('data'),
                  Text('data'),
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  Container(),
                  const Text('data'),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
