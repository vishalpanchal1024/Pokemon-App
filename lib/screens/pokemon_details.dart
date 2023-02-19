import 'package:flutter/material.dart';

class PokeDetails extends StatefulWidget {
  final getdata;
  const PokeDetails({Key? key, this.getdata}) : super(key: key);

  @override
  State<PokeDetails> createState() => _PokeDetailsState();
}

class _PokeDetailsState extends State<PokeDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: const Color(0xffd4c4b5),
      appBar: AppBar(title: Text(widget.getdata.name),
        backgroundColor: const Color(0xff087770),
        elevation: 0,
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Container(
            color:const Color(0xffd4c4b5)
,          ),
          Center(
            child: Container(
              margin: const EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                color: Colors.blue.shade500,gradient:  const LinearGradient(begin:
              Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors:[Color(0xffcbb545),
                    Color(0xffb05042),
                  ]),
              ),
              height: 380.0,
              width: 300.0,
            ),
          ),
          Column(
            children: [SizedBox(height: 25.0,),
              Container(
                height: 170.0,
                width: 250.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.contain,
                        image: NetworkImage(widget.getdata.img.toString()))),
              ),
              const SizedBox(
                height: 25,
              ),
              Text(
                widget.getdata.name.toString(),
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 22.0,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1),
              ),SizedBox(height: 10,),
              Text(
                'Height : ${widget.getdata.height.toString()}',
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1),
              ),SizedBox(height: 10,),
              Text(
                'Weight : ${widget.getdata.weight.toString()}',
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1),
              ),SizedBox(height: 10,),
              const Text(
                'Type',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1),
              ),SizedBox(height: 10,),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: widget.getdata.type
                    .map<Widget>((t) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal:8.0),
                      child: FilterChip(
                          backgroundColor:  Colors.black87.withOpacity(0.7),
                          label: Text(
                            t.toString(),
                            style: const TextStyle(color: Colors.white),
                          ),
                          onSelected: (b) {}),
                    ))
                    .toList(),
              ),const Text(
                'Weaknesses',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1),
              ),SizedBox(height: 10,),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: widget.getdata.weaknesses
                    .map<Widget>((t) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal:8.0),
                  child: FilterChip(
                      backgroundColor: Colors.black87.withOpacity(0.7),
                      label: Text(
                        t.toString(),
                        style: const TextStyle(color: Colors.white),
                      ),
                      onSelected: (b) {}),
                ))
                    .toList(),
              )
            ],
          )
        ],
      ),
    );
  }
}
