import 'package:flutter/material.dart';

class CardSimple extends StatelessWidget {
  const CardSimple({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Card'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Card(
              color: Colors.red[900],
              elevation: 10.0,
              child: const SizedBox(
                height: 80,
                child: Row(
                  children: [
                    Expanded(
                        child: Text(
                      'This is card 1 , This is card 1 ,This is card 1 This is card 1This is card 1This is card 1This is card 1This is card 1This is card 1',
                      style: TextStyle(color: Colors.white),
                    ))
                  ],
                ),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.all(20),
            color: Colors.green,
            elevation: 0.0,
            child: SizedBox(
              height: 80,
              child: InkWell(
                splashColor: Colors.amber,
                onTap: () {},
                child: Expanded(
                  child: Row(
                    children: [
                      const Text(
                        'This is card 2 (with InkWell',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.elliptical(40, 80),
              )),
              child: SizedBox(
                height: 80,
                child: Row(
                  children: [Text('This is card3 (with border radius)')],
                ),
              ),
            ),
          ),
          Card(
            color: Colors.orange,
            child: Column(
              children: [
                SizedBox(
                  height: 180,
                  child: Stack(
                    children: [
                      Positioned.fill(child: Image.asset('images/lotus.jpg')),
                      const Positioned(
                          left: 16,
                          bottom: 16,
                          right: 16,
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            alignment: Alignment.centerLeft,
                            child: Text('Card 4 (Complex Example)'),

                          ))
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
