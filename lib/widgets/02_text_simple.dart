import 'package:flutter/material.dart';

class TextDemo extends StatelessWidget {
  const TextDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      width: 500,
      height: 250,
      color: Colors.amber,
      child: const Text(
        'This is Some Text , This is Some Text, This is Some Text , This is Some Text',
        style: TextStyle(
            color: Colors.red,
            fontSize: 24,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.italic,
            letterSpacing: 5,
            decoration: TextDecoration.lineThrough,
            overflow: TextOverflow.ellipsis),
        textAlign: TextAlign.justify,
      ),
    ));
  }
}
