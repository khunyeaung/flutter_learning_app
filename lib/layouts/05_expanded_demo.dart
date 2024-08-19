import 'package:flutter/material.dart';

class ExpandedDemo extends StatelessWidget {
  const ExpandedDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            flex: 2,
            child: Container(
              color: Colors.amber,
            )),
        Expanded(
            flex: 4,
            child: Container(
              color: Colors.red,
            )),
        Expanded(
            flex: 6,
            child: Container(
              color: Colors.blue,
            ))
      ],
    );
  }
}
