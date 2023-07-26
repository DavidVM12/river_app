import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_app/config/config.dart';

final namesStreamProvider = StreamProvider.autoDispose<String>((ref) async* {
  await for (final name in RandomGenerator.randomNamesSream()) {
    yield name;
  }
});



//other form

// final namesStreamProvider = StreamProvider<List<String>>((ref) async* {
//   yield [];
//   await Future.delayed(const Duration(seconds: 2));

//   yield ['Fernando'];
//   await Future.delayed(const Duration(seconds: 2));

//   yield ['Fernando', 'Melissa'];
//   await Future.delayed(const Duration(seconds: 2));

//   yield ['Fernando', 'Melissa', 'Juan'];
//   });
