import 'package:flutter_riverpod/flutter_riverpod.dart';

final randomNameProvider = StateProvider<String>((ref) {
  print('randomNameProvider');
  return 'Juan Carlos';
});
