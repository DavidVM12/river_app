import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_app/config/config.dart';

final pokemonIdProvider = StateProvider<int>((ref) {
  return 1;
});

final pokemonNameProvider = FutureProvider<dynamic>((ref) async {
  final id = ref.watch(pokemonIdProvider);
  final name = PokemonService.getPokemonName(id);
  return name;
});

//refenrence
//final pokemonNameProvider =
//    FutureProvider.family<dynamic, int>((ref, id) async {
//  final name = PokemonService.getPokemonName(id);
//  return name;
//});
