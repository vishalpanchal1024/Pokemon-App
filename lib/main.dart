import 'package:flutter/material.dart';
import 'package:pokemon_app/screens/pokemon.dart';

void main() {
  runApp(const MyPokemonApp());
}

class MyPokemonApp extends StatefulWidget {
  const MyPokemonApp({Key? key}) : super(key: key);

  @override
  State<MyPokemonApp> createState() => _MyPokemonAppState();
}

class _MyPokemonAppState extends State<MyPokemonApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Pokemons(),
      debugShowCheckedModeBanner: false,
    );
  }
}
