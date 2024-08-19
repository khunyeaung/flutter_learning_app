import 'package:flutter/material.dart';

class RowColumnDemo extends StatelessWidget {
  const RowColumnDemo({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> items = const [
      Icon(
        Icons.star,
        size: 64,
      ),
      Icon(
        Icons.star,
        size: 128,
      ),
      Icon(
        Icons.star,
        size: 64,
      ),
    ];

    return ListView(
      children: [
        Container(
            padding: const EdgeInsets.all(20),
            height: 200,
            color: Colors.orange,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: items,
            )),
        Container(
          height: 400,
          color: Colors.blue,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.end,
            children: items,
          ),
        )
      ],
    );
  }
}
