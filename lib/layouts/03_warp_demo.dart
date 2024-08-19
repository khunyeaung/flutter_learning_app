import 'package:flutter/material.dart';

class WarpDemo extends StatelessWidget {
  const WarpDemo({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> colorLists = ['red', 'green', 'blue', 'yellow', 'orange'];
    Map<String, Color> colorMap = {
      'red': Colors.red,
      'green': Colors.green,
      'blue': Colors.blue,
      'yellow': Colors.yellow,
      'orange': Colors.orange
    };
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Wrap(
        spacing: 5,
        runSpacing: 5,
        children: colorLists
            .map((itemColors) => Chip(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  backgroundColor: colorMap[itemColors],
                  label: Text(itemColors),
                  avatar: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Text(colorLists[0]),
                  ),
                ))
            .toList(),
      ),
    );
  }
}
