import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:pokemon_app/models/api_model.dart';

class ApiResponce {
  Future<PokemonDetails> getData() async {
    var url = Uri.parse(
        'https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json');
    var response = await http.get(url);
    var body = jsonDecode(response.body);
    PokemonDetails user = PokemonDetails.fromJson(body);
    return user;
  }
  //
  // Future<List<Note>> fetchJson() async {
  //   var url = ('https://jsonplaceholder.typicode.com/todos'); //Change
  //   var response = await http.get(url);
  //
  //   var notes = List<Note>();
  //
  //   if (response.statusCode == 200) {
  //     var jsons = json.decode(response.body);
  //     for (var jsons2 in jsons) {
  //       notes.add(Note.fromJson(jsons2));
  //     }
  //     return notes;
  //   } else {
  //     print('Failed to fetch data');
  //   }
  // }
}
