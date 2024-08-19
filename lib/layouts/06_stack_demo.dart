import 'dart:ui';
import 'package:flutter/material.dart';

class StackDemo extends StatelessWidget {
  const StackDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Image.asset('assets/images/lotus.jpg'),
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                child: Container(),
              ),

              // Opacity(
              //   opacity: 0.8,
              //   child: Container(
              //     color: Colors.red,
              //     width: double.infinity,
              //     height: 280,
              //   ),
              // ),
              const Text(
                'Some Caption',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: Colors.white),
              )
            ],
          )
        ],
      ),
    );
  }
}
