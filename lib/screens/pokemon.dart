import 'package:flutter/material.dart';
import '../models/api_model.dart';
import '../models/api_responce.dart';
import 'pokemon_details.dart';

class Pokemons extends StatefulWidget {
  const Pokemons({Key? key}) : super(key: key);

  @override
  State<Pokemons> createState() => _PokemonsState();
}

class _PokemonsState extends State<Pokemons> {
  ApiResponce client = ApiResponce();
  PokemonDetails? data;
  Future<void> getData() async {
    data = await client.getData();
    setState(() {

    });
  }
  @override
  void initState() {
    getData();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0xffd4c4b5),
      appBar: AppBar(
        centerTitle: true,
       backgroundColor: const Color(0xff087770),
        title: const Text('Pokemon App'),
        elevation: 0,actions: [Icon(Icons.more_vert_sharp)],
      ),drawer: Drawer(),
      body: SafeArea(
        child:data == null ?
        const Center(child: CircularProgressIndicator(),):
        ListView.builder(
            itemCount: data!.pokemon!.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => PokeDetails(
                        getdata: data!.pokemon![index],
                      ),
                    ),
                  );
                },
                child: Container(height: 200,
                  padding: const EdgeInsets.all(20.0),
                  margin: const EdgeInsets.all(18.0),
                  decoration: BoxDecoration(gradient: const LinearGradient(begin:
                  Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors:[Color(0xffcbb545),
                        Color(0xffb05042),
                      ]),
                    borderRadius: BorderRadius.circular(12.0),
                    color:Colors.blue
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.network(
                        data!.pokemon![index].img.toString(),
                      ),
                      Text(
                        data!.pokemon![index].name.toString(),
                        style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.white),
                      ),
                      const SizedBox(
                        height: 2.0,
                      )
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
