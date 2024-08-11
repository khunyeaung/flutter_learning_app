import 'package:flutter/material.dart';

class StackDemo extends StatelessWidget {
  const StackDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        Image.asset('assets/images/lotus.jpg'),
        
        const Text('Some Caption',style: TextStyle(fontWeight: FontWeight.w600,
        fontSize: 20,color: Colors.blue),)
      ],
    );
  }
}
