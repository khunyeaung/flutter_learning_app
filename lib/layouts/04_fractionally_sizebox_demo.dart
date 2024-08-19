import 'package:flutter/material.dart';

class FractionallySizeboxDemo extends StatelessWidget {
  const FractionallySizeboxDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 300,
          color: Colors.orange,
        ),
        const Flexible(
            child: FractionallySizedBox(
          heightFactor: 0.8,
          widthFactor: 0.8,
          child: Placeholder(),
        ))
      ],
    );
  }
}
