import 'package:flutter/material.dart';

class ContainerDemo extends StatelessWidget {
  const ContainerDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200,
        height: 200,
        alignment: Alignment.center,
        transform: Matrix4.rotationZ(0.2),
        // color: Colors.deepOrange,
        decoration: BoxDecoration(
          border: Border.all(width: 5, color: Colors.black),
          borderRadius: const BorderRadius.all(Radius.circular(16)),
          color: Colors.deepOrange,
        ),
        child: const Icon(
          Icons.gif_box,
          size: 128,
        ),
        // const Text('Hello')
      ),
    );
  }
}
