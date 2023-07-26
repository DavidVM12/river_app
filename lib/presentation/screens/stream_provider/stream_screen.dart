import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_app/presentation/providers/random_names_provider.dart';

class StreamScreen extends ConsumerWidget {
  const StreamScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final randomNames = ref.watch(namesStreamProvider);

    // one form to use

    //if (!randomNames.hasValue) {
    //  return const Scaffold(
    //    body: Center(
    //      child: CircularProgressIndicator(),
    //    ),
    //  );
    //}
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stream provider'),
      ),
      body: randomNames.when(
          data: (names) => Center(
                child: Text(names),
              ),
          error: (error, stack) => Center(
                child: Text('Error: $error'),
              ),
          loading: () => const Center(child: CircularProgressIndicator())),
    );
  }
}
